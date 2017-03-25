# frozen_string_literal: true
class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :name, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
