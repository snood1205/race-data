# frozen_string_literal: true

class CreateTracks < ActiveRecord::Migration[7.1]
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.string :location
      t.decimal :length_km
      t.integer :lap_record_ms
      t.string :map_url

      t.timestamps
    end
  end
end
