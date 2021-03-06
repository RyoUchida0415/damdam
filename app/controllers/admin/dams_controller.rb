class Admin::DamsController < ApplicationController
  def index
  	@dams = Dam.find(Favorite.group(:dam_id).order('count(dam_id) desc').pluck(:dam_id))
    @dam_ids =Favorite.group(:dam_id).pluck(:dam_id)
    @zero_dam = Dam.where.not(id:@dam_ids)
  end

  def show
    @dam = Dam.find(params[:id])
  end

  def new
  	@dam = Dam.new
  end

  def create
  	@dam = Dam.new(dam_params)
    if @dam.save
      flash[:success] = 'ダム投稿できました！'
      redirect_to admin_dams_path
    else
      flash[:danger] = 'ダム投稿出来ませんでした。空欄はありませんか？'
      render 'new'
    end
  end

  def destroy
    @dam = Dam.find(params[:id])
    @dam.destroy
    redirect_to admin_dams_path
  end

  private
	def dam_params
		params.require(:dam).permit(:title, :body, :category, :postal_code, :prefecture_code, :city, :street, :url,  { images: [] })
	end

end