class PicturesController < ApplicationController

  before_filter :authenticate_user!
  before_action :load_picture, only:  [:show, :thumb, :box]

  def show
    send_file Rails.root.join(@picture.filepath, @picture.filename), type: "image/jpeg", disposition: "inline", filename: @picture.filename, x_sendfile: false
  end

  def thumb
    send_file Rails.root.join(@picture.filepath, 'thumbs', @picture.filename), type: "image/jpeg", disposition: "inline", filename: @picture.filename, x_sendfile: false
  end

  def box
    send_file Rails.root.join(@picture.filepath, 'boxes', @picture.filename), type: "image/jpeg", disposition: "inline", filename: @picture.filename, x_sendfile: false
  end

  private

    def load_picture
      @picture = Picture.find params[:id]
    end

end
