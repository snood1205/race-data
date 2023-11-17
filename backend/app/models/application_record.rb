# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def as_json(options = nil)
    super(options).deep_transform_keys { |key| key.to_s.camelize(:lower) }
  end
end
