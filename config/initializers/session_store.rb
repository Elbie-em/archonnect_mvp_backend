if Rails.env.production?
  Rails.application.config.session_store :cookie_store, key: "api-archonnect-mvp", domain: :all
else
  Rails.application.config.session_store :cookie_store, key: "api-archonnect-mvp"
end