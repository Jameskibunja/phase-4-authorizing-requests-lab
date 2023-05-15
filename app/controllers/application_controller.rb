class ApplicationController < ActionController::API
  include ActionController::Cookies

  private

  def authenticate
    return if session[:user_id]

    render json: { error: "Not authorized" }, status: :unauthorized
  end

end
