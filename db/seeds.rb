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

User.create![
{Carly Fiorina, 1954}
{Donald Trump, 1946}
{Ben Carson, 1951}
{Hillary Clinton, 1947}
]
