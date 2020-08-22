class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, :email,:last_name,:first_name,:kana_last_name, :kana_first_name,:password, presence: true
  validates :last_name, :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/} 
  validates :kana_last_name, :kana_first_name, format: { with: /\A[ァ-ヶー－]+\z/}
  validates :password,length: { minimum: 6 }, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i}
  validates :email,  format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}

       
end
