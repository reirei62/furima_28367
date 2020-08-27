class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items
  with_options presence: true do
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
    VALID_NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/
    VALID_KANA_REGEX = /\A[ァ-ヶー－]+\z/
    validates :nickname,:birth
    validates :email, format: { with: VALID_EMAIL_REGEX }
    validates :password, format: { with: VALID_PASSWORD_REGEX }
    validates :last_name, :first_name, format: { with: VALID_NAME_REGEX}
    validates :kana_last_name, :kana_first_name, format: { with: VALID_KANA_REGEX}
  end
end
