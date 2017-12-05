class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   belongs_to :role
  
  def admin?
  	self.role.nombre == "admin"
  end

  def secretaria?
  	self.role.nombre == "secretaria"
  end

  def secretaria2?
  	self.role.nombre == "secretaria2"
  end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
