namespace :ariel do
  desc 'Start rule learning algorithm'
  task learn: :environment do
    require __dir__ + '/../ariel_structures'
    include ArielStructures
    structure = invoice_structure
    documents = Document.where(is_tagged: true).map { |d| d.tagged_xml }

    # structure = Ariel::Node::Structure.new do |r|
    #   r.item :calculation do |c|
    #     c.item :result
    #   end
    # end
    # documents = Dir['/home/andrea/workarea/ariel/examples/google_calculator/labeled/*']

    # documents = documents[1,2]
    Ariel.learn structure, *documents

    File.open(Rails.root.to_s + '/db/learnt_rules.yaml', 'wb') do |file|
      YAML.dump structure, file
    end
  end

end
