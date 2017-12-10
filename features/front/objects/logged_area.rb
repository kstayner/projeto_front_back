# Classe Logged Area
class LoggedArea < SitePrism::Page
  element :message_logged_in, 'i[class="icon-lock"]'
  element :button_logout, 'a[class="button secondary radius"]'

  def validate_button_logout
    page.has_field?(button_logout)
  end

  def validate_message_logged_area
    page.has_field?(message_logged_in)
  end
end
