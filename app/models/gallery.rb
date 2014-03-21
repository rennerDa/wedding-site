class Gallery < ActiveRecord::Base

  def to_s
    return name
  end
end
