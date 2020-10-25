class PostCommentsController < ApplicationController
	def create
		dam = Dam.find(params[:dam_id])
		comment = current_user.post_comments.new(post_comment_params)
    	comment.dam_id = dam.id
    	comment.save
    	redirect_to dam_path(dam)
	end

	def destroy
    	PostComment.find_by(id: params[:id], dam_id: params[:dam_id]).destroy
    	redirect_to dam_path(params[:dam_id])
    end

	 private
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
