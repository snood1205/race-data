# frozen_string_literal: true

class Track < ApplicationRecord
  has_many :races, dependent: :destroy
  has_many :race_results, through: :races
end
