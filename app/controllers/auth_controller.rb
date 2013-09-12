class AuthController < ApplicationController
  before_filter :authenticate_user!

  def runkeeper
    access_token = HealthGraph.access_token(params[:code])
    current_user.update_column(:rk_auth, access_token)
    redirect_to root_url
  end

  def foursquare
    foursquare = Foursquare::Base.new(FSQ_CID, FSQ_CS)
    access_token = foursquare.access_token(params[:code], root_url)
    current_user.update_column(:foursq_auth, access_token)
    redirect_to root_url
  end

end