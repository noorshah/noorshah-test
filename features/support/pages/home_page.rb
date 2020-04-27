class HomePage <SitePrism::Page
  element :welcome_message,'h1'
  element :add_client, 'a.btn.btn-primary.float-right.ml-2'
  element :success_message,'.flash-message'
  element :user_menu,'button#user_menu_button'
  element :sign_out,'button.btn.header__menuItem[type=submit]'

  def add_a_client
    wait_until_add_client_visible(wait: 10)
    add_client.click
  end

  def client_is_added
    wait_until_success_message_visible(wait: 10)
  end

  def sign_out_successfully
    user_menu.click
    sign_out.click
  end
end
