# frozen_string_literal: true

class CreateRaces < ActiveRecord::Migration[7.1]
  def change
    create_table :races do |t|
      t.string :name, null: false
      t.datetime :date
      t.belongs_to :track, null: false, foreign_key: true

      t.timestamps
    end
  end
end
