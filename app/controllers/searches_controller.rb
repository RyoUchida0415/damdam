class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @content = params["search"]["content"]
    @records = search_for(@content)
  end

  private
  def search_for(content)
     Dam.where('title LIKE ?', '%'+content+'%')
  end
end
