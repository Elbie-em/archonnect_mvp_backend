if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "api-archonnect-mvp", domain: "api-archonnect-mvp.herokuapp.com"
elsif Rails.env == "development"
  Rails.application.config.session_store :cookie_store, key: "archonnect_backend", domain: "api-archonnect-mvp.herokuapp.com"
end