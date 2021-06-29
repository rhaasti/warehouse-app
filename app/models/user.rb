class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
# devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
# attr_accessible :email, :password, :password_confirmation, :remember_me

end
