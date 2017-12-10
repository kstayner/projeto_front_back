Feature: Login
  In access the site's logged in area
  As a Site user
  I want to have access to the Site

  @login_invalid_password @front @all
  Scenario: Login valid user and invalid password
    Given that I access the website the-internet.herokuapp.com
    And fill in valid user and invalid password
    When I click on login button
    Then the message "Your password is invalid!"

  @login_invalid_user @front @all
  Scenario: Login invalid user and invalid password
    Given that I access the website the-internet.herokuapp.com
    And fill in invalid user and invalid password
    When I click on login button
    Then the message "Your username is invalid!"

  @login_success @front @all
  Scenario: Login fill in valid user and valid password
    Given that I access the website the-internet.herokuapp.com
    And fill in valid user and valid password
    When I click on login button
    Then it is redirected to logged in area and displays the message "You logged into a secure area!"
