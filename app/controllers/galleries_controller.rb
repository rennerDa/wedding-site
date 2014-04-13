class GalleriesController < ApplicationController

  before_filter :authenticate_user!
  before_action :load_gallery, only: :show

  def index
    @galleries = Gallery.all.to_a
  end

  def show
  end

  private
    def load_gallery
      if !Gallery.exists? params[:id]
        redirect_to root_url
        return
      end
      @gallery = Gallery.find params[:id]
    end
end
