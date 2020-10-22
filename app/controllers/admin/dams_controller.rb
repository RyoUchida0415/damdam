class Admin::DamsController < ApplicationController
  def index
  	@dams = Dam.all
  end

  def show
    @dam = Dam.find(params[:id])
  end

  def edit
  end

  def new
  	@dam = Dam.new
  end

  def create
  	@dam = Dam.new(dam_params)
  	@dam.save
  	redirect_to admin_dams_path
  end

  def destroy
    @dam = Dam.find(params[:id])
    @dam.destroy
    redirect_to admin_dams_path
  end

  private
	def dam_params
		params.require(:dam).permit(:title, :body, :category)
	end

end