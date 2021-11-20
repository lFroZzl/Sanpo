class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :location
  has_many :events
  has_many :comments
  has_many :applicants
  has_many :notifications
  has_many :friends

  
end
