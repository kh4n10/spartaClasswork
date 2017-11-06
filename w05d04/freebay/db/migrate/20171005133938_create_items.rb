class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :location
      t.text :image
      t.boolean :available

      t.timestamps
    end
  end
end
