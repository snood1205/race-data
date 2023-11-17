# frozen_string_literal: true

class Race < ApplicationRecord
  belongs_to :track
  has_many :race_results, dependent: :destroy

  def winners
    race_results.winners.includes(:driver).map(&:driver)
  end

  def winner
    raise 'No winner' if winners.empty?
    raise 'Multiple winners' if winners.size > 1

    winners.first
  end
end
