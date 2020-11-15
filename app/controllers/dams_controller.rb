class DamsController < ApplicationController
  def index
  	@dams = Dam.find(Favorite.group(:dam_id).order('count(dam_id) desc').pluck(:dam_id))
  	@dam_ids =Favorite.group(:dam_id).pluck(:dam_id)
  	@zero_dam = Dam.where.not(id:@dam_ids)
  end

   def show
    @dam = Dam.find(params[:id])
    @post_comment = PostComment.new
  end

end
