if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "archonnect_backend", domain: "api-archonnect-mvp.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "archonnect_backend"
end