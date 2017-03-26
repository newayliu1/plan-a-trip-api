# frozen_string_literal: true
class CreateAttractions < ActiveRecord::Migration[5.0]
  def change
    create_table :attractions do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.integer :time_spend, null: false
      t.string :notes
      t.references :trip, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
