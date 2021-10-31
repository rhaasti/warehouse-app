class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :recoverable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
# devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
# attr_accessible :email, :password, :password_confirmation, :remember_me

end
