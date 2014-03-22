class PicturesController < ApplicationController

  before_filter :authenticate_user!
  before_action :load_picture, only: :show

  def show
    send_file Rails.root.join("02_Pictures", "slider", "P1010392.JPG"), type: "image/jpeg", disposition: "inline"
  end

  private

    def load_picture
      @picture = Picture.find params[:id]
    end

end
