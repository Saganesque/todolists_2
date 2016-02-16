# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin


Each TodoList contains five (5) TodoItems (there must be 20 total)

Each TodoItem having a due date of one year from the time the database is loaded

Each TodoItem must have an arbitrary title and descriptions

(Hint: you may want to consider using loops)

Once the seeds.rb file is created, populate the database using rake db:seed

=end




User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

User.create! [
    {username: "Fiorina", password_digest: "1954"},
    {username: "Trump", password_digest: "1946"},
    {username: "Carson", password_digest: "1951"},
    {username: "Clinton", password_digest: "1947"}
]

Profile.create! [
    {gender: "female", birth_year: "1954", first_name: "Carly", last_name: "Fiorina"},
    {gender: "male", birth_year: "1946", first_name: "Donald", last_name: "Trump"},
    {gender: "male", birth_year: "1951", first_name: "Ben", last_name: "Carson"},
    {gender: "female", birth_year: "1947", first_name: "Hillary", last_name: "Clinton"}
                ]

#tmp_tdl_array = Array.new(0)
#tmp_tdi_array = Array.new(0)

User.all.each do |x|
  #tmp_tdl_array.push ({list_name: "#{x.username}_tdl", list_due_date: Date.today})
 a1= TodoList.create! ({list_name: "#{x.username}_tdl", list_due_date: Date.today})
 x.todo_lists << a1
 aaaaa=1
  while aaaaa < User.count
  #tmp_tdi_array.push ({due_date: Date.tomorrow, title: "item_#{a} based on #{x.username}", description: "something", completed: false})
   a2= TodoItem.create! ({due_date: Date.tomorrow, title: "item_#{aaaaa} based on #{x.username}", description: "something", completed: false})
   a1.todo_items << a2
p a1.todo_items
   aaaaa+=1
  end

end

#TodoList.create! tmp_tdl_array




=begin
it "must have Profiles set up for each user with the given data" do
  expect(Profile.all.length).to be(4)
  user_list.each do | fname, lname, gender, byear |
    p = Profile.find_by(last_name: lname)
    expect(p.first_name).to eql(fname)
    expect(p.gender).to eql(gender)
    expect(p.birth_year).to eql(byear)
  end
end

    create_table :todo_lists do |t|
      t.string :list_name
      t.date :list_due_date

      t.timestamps null: false


t.string :gender
t.integer :birth_year
t.string :first_name
t.string :last_name
=end
