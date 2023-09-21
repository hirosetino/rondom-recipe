class User < ApplicationRecord
    has_many :recipes
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

    validates :nickname, presence: true

    VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
    validates :password, format: { with: VALID_PASSWORD_REGEX }
end
