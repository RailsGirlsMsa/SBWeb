<<<<<<< HEAD
class Admin < ApplicationRecord
=======
class Admin < ActiveRecord::Base
>>>>>>> 564893e6aa041af023806e1391a07643334048b2
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
=======

  #mount avatar uploader
  mount_uploader :avatar, AvatarUploader
>>>>>>> 564893e6aa041af023806e1391a07643334048b2
end
