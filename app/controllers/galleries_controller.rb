class GalleriesController < ApplicationController

  before_action :load_gallery, only: :show

  def index
    @galleries = Gallery.all.to_a
  end

  def show
  end

  private
    def load_gallery
      @gallery = Gallery.find params[:id]
    end
end
