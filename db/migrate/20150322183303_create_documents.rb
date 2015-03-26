class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.text :original
      t.text :tagged
      t.boolean :is_tagged

      t.timestamps
    end
  end
end
