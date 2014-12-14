class CharactersController < ApplicationController
 before_filter :authenticate_any!
 def show
   if current_user.user_id.to_s == params[:id]
      @character = Character.find(params[:id])
   end
 end
end
