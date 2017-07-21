class AddAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :color
      t.string :breed
      t.integer :age
      t.string :gender
      t.integer :weight
      t.string :description
      t.string :photo

      t.integer :type_id

      t.timestamps
    end
  end
end
