class Profile < ActiveRecord::Base
  belongs_to :user
  validates_inclusion_of :gender, in: %w( male female )
  validate :my_happy_fname_lname_null_validator
  validate :no_sue

def  my_happy_fname_lname_null_validator

  if first_name.nil? && last_name.nil?
    then
  errors.add(:first_name, "Only one of either first name or last name may be empty")
  errors.add(:last_name, "Only one of either first name or last name may be empty")
  end

  end
def no_sue
  if gender == "male" && first_name== "Sue"
  then
    errors.add(:gender, "The man in black has a quarrel with you.")
  end

end


=begin


    Profile

    Define custom validator that permits first_name or last_name to be null but not both

    Define a validation for gender to be either "male" or "female" by using a built-in validator

    Define custom validator that prevents anyone that is male (gender) from having the first_name "Sue" ;)

=end

end
