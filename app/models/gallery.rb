class Gallery < ActiveRecord::Base

  has_many :pictures, dependent: :destroy
  belongs_to :picture

  alias :main_picture= :picture=

end
