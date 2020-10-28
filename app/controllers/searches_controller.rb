class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @content = params["search"]["content"]
    @method = params["search"]["method"]
    @records = search_for(@content, @method)
  end

  private
  def search_for(content, method)
      if method == 'perfect'
        Dam.where(title: content)
      elsif method == 'forward'
        Dam.where('title LIKE ?', content+'%')
      elsif method == 'backward'
        Dam.where('title LIKE ?', '%'+content)
      else
        Dam.where('title LIKE ?', '%'+content+'%')
      end
  end
end
