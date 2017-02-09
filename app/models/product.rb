class Product < ApplicationRecord
  belongs_to :user

  def announcer
    user.announcer
  end
end
