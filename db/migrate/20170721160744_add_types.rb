class AddTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :types do |t|
      t.string :species

      t.timestamps
    end
  end
end
