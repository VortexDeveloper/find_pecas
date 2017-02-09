class Product < ApplicationRecord
  belongs_to :user

  has_many :interests
  has_many :users, through: :interests

  def announcer
    user.announcer
  end
end
