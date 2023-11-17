# frozen_string_literal: true

class Nationality
  include ActiveModel::Model

  attr_accessor :name, :iso2, :iso3, :numeric

  def self.all
    return @all unless @all.nil?

    nationalities = YAML.load_file Rails.root.join('app/fixtures/nationalities.yml')
    @all = nationalities.map(&method(:new))
  end

  def self.find_by(attributes)
    all.find { |driver| attributes.all? { |key, value| driver.public_send(key) == value } }
  end
end
