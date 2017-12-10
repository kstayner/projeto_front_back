# Class Login
class Login < SitePrism::Page
  element :username, '#username'
  element :password, '#password'
  element :button_login, 'button[class=radius]'

  def initialize
    @user_data = USER_DATA['data']
  end

  def valid_user_invalid_password
    username.set @user_data['valid_username']
    password.set @user_data['invalid_password']
  end

  def invalid_user_valid_password
    username.set @user_data['invalid_username']
    password.set @user_data['valid_password']
  end

  def valid_user_valid_password
    username.set @user_data['valid_username']
    password.set @user_data['valid_password']
  end

  def click_login_button
    button_login.click
  end

  def validate_login_button
    page.has_field?(button_login)
  end
end
