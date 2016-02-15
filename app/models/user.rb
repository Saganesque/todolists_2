class User < ActiveRecord::Base


=begin
8. Implement a 1:many :through relationship from User to TodoItem by using the 1:many relationship from User to

TodoLists as a source.

  User

todo_items - a 1:many through relationship with TodoItem through TodoLists (i.e., User has_many

todo_items)
=end


has_one :profile, dependent: :destroy
has_many :todo_lists, dependent: :destroy

has_many :todo_items, through: :todo_lists, source: :todo_items

end


