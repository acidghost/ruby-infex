class Document < ActiveRecord::Base
  include ArielStructures

  before_create do |doc|
    if doc.is_tagged?
      doc.set_tagged_xml
    else
      doc.setup_tagged
    end
  end

  before_update do |doc|
    if doc.is_tagged?
      doc.set_tagged_xml
    end
  end

  def set_tagged_xml
    structure = invoice_structure
    doc = Nokogiri::HTML(self.tagged)
    bf_traverse_tree structure do |node|
      tag_name = node.node_name.to_s
      tag_name = 'ariel-' + tag_name
      dtag_name = 'data-' + tag_name
      dctag_name = dtag_name + '-condition'
      found = doc.xpath '//*[@' + dtag_name + '="true" and @' + dctag_name + '="open"]'
      found.each do |open_tag|
        new_node = Nokogiri::XML::Node.new tag_name, doc
        parent = open_tag.parent
        if open_tag.name === 'span'
          new_node.content = open_tag.content
          open_tag.remove
        else
          nxt = open_tag.next_sibling
          new_node.add_child open_tag
          until nxt.nil?
            tmp = nxt.next_sibling
            new_node.add_child nxt
            if nxt.attr(dctag_name) === 'close'
              break
            end
            nxt = tmp
          end
        end
        parent.add_child new_node
      end
      doc.xpath('//@' + dtag_name).remove
      doc.xpath('//@' + dctag_name).remove
    end

    self.tagged_xml = doc.to_html
  end

  def is_tagged?
    self.tagged
  end

  def setup_tagged
    html = Nokogiri::HTML self.original
    html.xpath('//@href').remove
    html.xpath('//@style').remove
    html.xpath('//style').remove
    self.tagged = html.to_html
  end

  private
    def bf_traverse_tree(structure)
      queue = [structure]
      visited = { structure.node_name => true }
      level = 0
      yield structure, level
      until queue.empty?
        node = queue.pop
        level = level+1
        node.children.each do |node_name, child|
          unless visited[node_name]
            yield child, level
            queue.push child
            visited[node_name] = true
          end
        end
      end
    end

end
