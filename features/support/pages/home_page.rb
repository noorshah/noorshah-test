class HomePage <SitePrism::Page
  element :welcome_message,'h1'
  element :add_client, 'a.btn.btn-primary.float-right.ml-2'
  element :success_message,'.flash-message'
  element :user_menu,'button#user_menu_button'
  element :sign_out,'button.btn.header__menuItem[type=submit]'

  element :client_search_dashboard,'input#find_client_dashboard'
  element :client_search_typeahead,'table#find_client_dashboard_listbox tr#find_client_dashboard_listbox_0'
  element :client_name_found,'h1'



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

  def search_for_existing_client(client_name)
    wait_until_client_search_dashboard_visible(wait: 10)
    client_search_dashboard.set(client_name)
    client_search_typeahead.click
  end

  def get_found_client_details
    wait_until_client_name_found_visible(wait: 30)
    client_name_found.text
  end
end
