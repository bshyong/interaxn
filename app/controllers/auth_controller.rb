class AuthController < ApplicationController
  before_filter :authenticate_user!

  def runkeeper
    access_token = HealthGraph.access_token(params[:code])
    current_user.update_column(:rk_auth, access_token)
    redirect_to root_url
  end

end