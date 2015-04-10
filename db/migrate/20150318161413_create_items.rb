class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :url
      t.text :description
      t.boolean :important
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
