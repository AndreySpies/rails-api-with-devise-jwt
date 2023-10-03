Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '127.0.0.1:3000',
            /localhost:[0-9]{4}/

    resource '*',
             headers: :any,
             expose: %w[access-token expiry token-type Authorization],
             methods: %i[get post put patch delete options head show]
  end
end
