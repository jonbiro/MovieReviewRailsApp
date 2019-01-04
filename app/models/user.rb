class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :movies
  has_many :reviews, through: :movies # dependent: :destroy

  def validate_username
    errors.add(:username, :invalid) if User.where(email: username).exists?
  end
  
end
