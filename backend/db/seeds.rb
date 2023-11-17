# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Note these need to be in order of execution; for example, if race is
# seeded before track, the track_id foreign key will not be valid
TABLES_TO_SEED = %w[Track Race Team Driver RaceResult].freeze

TABLES_TO_SEED.each do |table_name|
  seed_file = Rails.root.join 'db', 'seeds', "#{table_name.underscore}.rb"
  next unless File.exist? seed_file

  Rails.logger.debug { "Seeding #{table_name}..." }
  require seed_file
end
