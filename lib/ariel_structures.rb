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
    YAML.load_file(Rails.root.to_s + '/db/learnt_rules.yaml')
  end

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