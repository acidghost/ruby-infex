class DocumentsController < ApplicationController
  include ArielStructures

  before_action :set_document, only: [:show, :edit, :update, :destroy, :extract, :original, :tagged, :tagged_xml]

  class Product < Struct.new :name, :price

  end

  class Invoice < Struct.new :date, :products, :total

    def initialize
      self[:products] = []
    end

    def add_product(product)
      self[:products].push product
    end

  end

  def initialize
    super
    @structure = invoice_structure
  end

  # GET /documents
  # GET /documents.json
  def index
    @documents = Document.all
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(document_params)

    respond_to do |format|
      if @document.save
        format.html { redirect_to @document, notice: 'Document was successfully created.' }
        format.json { render :show, status: :created, location: @document }
      else
        format.html { render :new }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_url, notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def extract
    structure = learnt_structure
    extractions = Ariel.extract structure, @document.original
    invoice = Invoice.new
    e = extractions.first
    invoice.date = e.date.extracted_text unless e.try(:date).nil?
    (e/'products/*').each do |prod|
      p = Product.new
      p.name = prod.product_name.extracted_text unless prod.try(:product_name).nil?
      p.price = prod.product_price.extracted_text unless prod.try(:product_price).nil?
      invoice.add_product p
    end
    invoice.total = e.total.extracted_text unless e.try(:total).nil?
    Rails.logger.debug invoice.products.size
    render 'documents/extract', locals: { invoice: invoice } # , stream: true
  end

  def original
    render text: @document.original.to_s
  end

  def tagged
    doc = Nokogiri::HTML(@document.tagged)
    head = doc.xpath '//head'

    style = Nokogiri::XML::Node.new 'link', doc
    style['rel'] = 'stylesheet'
    style['type'] = 'text/css'
    style['href'] = '/assets/document.tagged.css'
    head.children.first.add_previous_sibling style

    script = Nokogiri::XML::Node.new 'script', doc
    script['type'] = 'text/javascript'
    script['src'] = '/assets/document.tagged.js'
    head.children.first.add_previous_sibling script

    html = doc.to_html
    html = html.split /\n/
    html = html[2..html.size-1]
    html.unshift '<html>'
    html.unshift '<!DOCTYPE html>'

    html = html.join "\n"

    render text: html
  end

  def tagged_xml
    render text: @document.tagged_xml
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:original, :tagged, :is_tagged)
    end
end
