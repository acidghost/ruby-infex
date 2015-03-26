module ArielStructures

  def invoice_structure
    Ariel::Node::Structure.new do |r|
      r.list :orders do |orders|
        orders.list_item :order do |order|
          order.item :date
          order.list :products do |products|
            products.list_item :product do |product|
              product.item :product_name
              product.item :product_price
            end
          end
          order.item :total
        end
      end
    end
  end

  def learnt_structure
    YAML.load_file(File.dirname(__FILE__) + '/../db/learnt_rules.yaml')
  end

end