class List < ActiveRecord::Base

has_many :foods , :class_name => "Food", :foreign_key => "list_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"

validates :list_name, :presence => true
validates :list_name, :uniqueness => {:scope => :user_id}

end
