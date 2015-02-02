class ProfilesController < ApplicationController
  def index
	@profile = Profile.where('user_id = ?', current_user.id).take
  end  
end
