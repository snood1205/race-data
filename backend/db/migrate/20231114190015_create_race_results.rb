# frozen_string_literal: true

class CreateRaceResults < ActiveRecord::Migration[7.1]
  def change
    create_table :race_results do |t|
      t.belongs_to :race, null: false, foreign_key: true
      t.belongs_to :driver, null: false, foreign_key: true
      t.integer :position
      t.integer :status
      t.integer :interval_ms

      t.timestamps
    end
  end
end
