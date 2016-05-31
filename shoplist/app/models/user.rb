class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :lists , :class_name => "List", :foreign_key => "user_id"
has_many :foods, :through => :lists , :source => :foods
has_many :foods, :through => :lists , :source => :user
end
