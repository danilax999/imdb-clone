# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ratings,
           inverse_of: :user,
           dependent: :destroy

  validates :fullname,
            presence: true,
            length: { minimum: 2 }

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: true }
end
