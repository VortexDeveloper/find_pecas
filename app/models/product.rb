class Product < ApplicationRecord
  belongs_to :user
  has_many :interests
  has_many :users, through: :interests
  has_one :vehicle
  has_one :part

  def announcer
    user.announcer
  end
end
