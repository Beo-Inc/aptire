class ProfilesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def show
    @profile_data = User.profile_data(params[:id])
  end
end
