class DamsController < ApplicationController
  def index
  	@dams = Dam.all
  end

   def show
    @dam = Dam.find(params[:id])
    @post_comment = PostComment.new
  end

end
