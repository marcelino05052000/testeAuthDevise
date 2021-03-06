class Cliente < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nome, presence: true, length: {in: 5..40}
  validates :cpf, presence: true, length: {is: 14}
  validates :password_confirmation, presence: true
end
