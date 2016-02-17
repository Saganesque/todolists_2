class User < ActiveRecord::Base


=begin
  13. Add a method to the User model class called get_completed_count, which:

      determines the number of TodoItems the User has completed using an aggregate query function

  (Hint: You are looking for the count of TodoItems associated with a specific User where

                           completed:true)

                           returns the count
=end

  def get_completed_count

  end




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

validates_presence_of :username
=begin

11. Add validation to User and Profile models

User

=end

end


