if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "api-archonnect-mvp", domain: "api-archonnect-mvp.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "api-archonnect-mvp", domain: "api-archonnect-mvp.herokuapp.com"
end