class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # deviseで使用する機能の記述
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
