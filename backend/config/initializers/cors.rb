# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  if Rails.env.development?
    allow do
      origins 'localhost:5173'

      resource '*', headers: :any, methods: :any
    end
  end
end