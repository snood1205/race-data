# frozen_string_literal: true

class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :headquarters
      t.date :founded
      t.integer :championships

      t.timestamps
    end
  end
end
