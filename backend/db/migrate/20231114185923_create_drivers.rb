# frozen_string_literal: true

class CreateDrivers < ActiveRecord::Migration[7.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :nationality_iso3
      t.date :date_of_birth
      t.belongs_to :team, null: false, foreign_key: true
      t.string :biography

      t.timestamps
    end
  end
end
