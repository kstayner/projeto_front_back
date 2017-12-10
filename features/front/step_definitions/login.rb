Given('that I access the website the-internet.herokuapp.com') do
  VisitSite.new.visit_site
end

And('fill in invalid user and invalid password') do
  Login.new.invalid_user_valid_password
end

And('fill in valid user and invalid password') do
  Login.new.valid_user_invalid_password
end

And('fill in valid user and valid password') do
  Login.new.valid_user_valid_password
end

When('I click on login button') do
  Login.new.click_login_button
end
