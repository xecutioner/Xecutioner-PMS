Given /^I am authenticated$/ do
  Person.create!(:email => "kapil@a.com", :password => "qwerty")
  visit('/people/sign_in')
  fill_in "Email", :with => "kapil@a.com"
  fill_in "Password", :with => "qwerty"
  click_button "person_submit"
end

