# frozen_string_literal: true

class Driver < ApplicationRecord
  belongs_to :team
  has_many :race_results, dependent: :destroy
  validate :validate_nationality

  private

  def validate_nationality
    errors.add(:nationality_iso3, 'The ISO3 code is not valid') if Nationality.find_by(iso3: nationality_iso3).nil?
  end
end
