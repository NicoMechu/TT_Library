class Api::ApiController < ActionController::Base
  
  protect_from_forgery with: :null_session

  # before_action :set_default_response_format

  # def set_default_response_format
  #  request.format = :json
  # end

end
