class ApplicationController < ActionController::API
  require 'json'

private
  def json_response(object)
    render json: object, status: :ok
  end
end
