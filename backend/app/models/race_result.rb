# frozen_string_literal: true

class RaceResult < ApplicationRecord
  belongs_to :race
  belongs_to :driver

  enum :status, %i[DSQ DNF DNS DNQ DNPQ WD].freeze

  scope :winners, -> { where(position: 1) }
end
