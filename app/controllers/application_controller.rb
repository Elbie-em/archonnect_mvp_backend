class ApplicationController < ActionController::Base
  include ActionController::MimeResponds
  skip_before_action :verify_authenticity_token
end
