class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   belongs_to :role
  
  def admin?
  	self.role.nombre == "admin"
  end

  def secretaria_escuela?
  	self.role.nombre == "secretaria_escuela"
  end

  def secretaria_departamento?
  	self.role.nombre == "secretaria_departamento"
  end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
