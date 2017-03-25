class CreateAttractions < ActiveRecord::Migration[5.0]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :address
      t.integer :time_spend
      t.string :notes

      t.timestamps
    end
  end
end
