class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :songs
  has_many :favorites

  validates :nickname, :password_confirmation, presence: true
  validates :password, { format: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,}+\z/i }
end
