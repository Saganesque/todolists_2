# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin

Create a seeds.rb file that will clear the existing data from the model tables and load the database with

The four users below with their birth years:

                                          Carly Fiorina, 1954

Donald Trump, 1946

Ben Carson, 1951

Hillary Clinton, 1947

Usernames (e.g., their last names) and a password for each User

                                                    A Profile for each User

                                                                Exactly one TodoList per User that is due one year from the date the database is loaded

                                                                (hint: Date.today provides today's date and 1.year can be used to define one year)

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
TodoList.create! [
                     {list_name: "td1", list_due_date: "1-1-2001"},
                     {list_name: "td2", list_due_date: "1-1-2002"},
                     {list_name: "td3", list_due_date: "1-1-2003"},
                     {list_name: "td4", list_due_date: "1-1-2004"}
                 ]

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
