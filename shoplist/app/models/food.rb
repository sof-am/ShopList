class Food < ActiveRecord::Base

belongs_to :list , :class_name => "List", :foreign_key => "list_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id "


validates :name, :presence => true
validates :name, :uniqueness => {:scope => [:user_id, :list_id]}
validates :ideal_number, :presence => true
validates :safety_level, :presence => true
validates :current_number, :presence => true
validates :ideal_number, :numericality => { only_integer: true }
validates :safety_level, :numericality => { only_integer: true }
validates :current_number, :numericality => { only_integer: true }
end
