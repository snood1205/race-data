# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :drivers, dependent: :destroy
  has_many :race_results, through: :drivers
end
