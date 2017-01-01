class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :phone, :uniqueness => true

  validates :phone, :presence => true

  validates :phone, :length => { :minimum => 10, :maximum => 14 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
