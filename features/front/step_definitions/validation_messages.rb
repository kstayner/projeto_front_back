Then('the message {string}') do |message|
  expect(page).to have_content message
end

Then('it is redirected to logged in area and displays the message {string}') do |message|
  expect(page).to have_content message
  LoggedArea.new.validate_button_logout
end
