class List < ActiveRecord::Base

has_many :foods , :class_name => "Food", :foreign_key => "list_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"

end
