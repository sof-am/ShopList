class Food < ActiveRecord::Base

belongs_to :list , :class_name => "List", :foreign_key => "list_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id "

end
