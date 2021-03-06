class FavoritesController < ApplicationController

    def index
        @user = current_user
        @favorites = Favorite.where(user_id: @user.id)
    end

	def create
    	dam = Dam.find(params[:dam_id])
    	favorite = current_user.favorites.new(dam_id: dam.id)
    	favorite.save
    	redirect_to dam_path(dam)
	end

  	def destroy
    	dam = Dam.find(params[:dam_id])
    	favorite = current_user.favorites.find_by(dam_id: dam.id)
    	favorite.destroy
    	redirect_to dam_path(dam)
	end
end
