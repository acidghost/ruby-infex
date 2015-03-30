class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.text :original, null: false
      t.text :tagged, default: nil
      t.text :tagged_xml, default: nil
      t.boolean :is_tagged, default: false

      t.timestamps
    end
  end
end
