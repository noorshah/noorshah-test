class HomePage <SitePrism::Page
  element :welcome_message,'h1'
  element :add_client, 'a.btn.btn-primary.float-right.ml-2'
  element :success_message,'.flash-message'
  element :user_menu,'button#user_menu_button'
  element :sign_out,'button.btn.header__menuItem[type=submit]'

  element :client_search_dashboard,'input#find_client_dashboard'
  element :client_search_typeahead,'table#find_client_dashboard_listbox tr#find_client_dashboard_listbox_0'
  element :client_name_found,'h1'
  element :client_date_of_birth_found,:xpath,'(//dl[contains(@class,property-list)])[2]//dd[1]'
  element :client_address_found,"div#personal_details_view_body > div.card.card-secondary p:last-child"

  element :no_matches_error,'div#find_client_dashboard_not-found'




  def add_a_client
    wait_until_add_client_visible(wait: 10)
    add_client.click
  end

  def client_is_added
    wait_until_success_message_visible(wait: 10)
  end

  def sign_out_successfully
    wait_until_user_menu_visible(wait: 10)
    user_menu.click
    sign_out.click
  end

  def search_for_existing_client(client_name)
    wait_until_client_search_dashboard_visible(wait: 30)
    client_search_dashboard.set(client_name)
    client_search_typeahead.click
  end

  def get_found_client_details
    wait_until_client_name_found_visible(wait: 30)
    client_name_found.text
  end

  def verify_client_details(full_name,date_of_birth,post_code)
    extracted_date_of_birth=client_date_of_birth_found.text.split(' ')[0]+'-'+(Date::ABBR_MONTHNAMES.index(client_date_of_birth_found.text.split(' ')[1])).to_s+'-'+client_date_of_birth_found.text.split(' ')[2]

    date_of_birth==extracted_date_of_birth &&full_name==client_name_found.text&& (client_address_found.text).include?(post_code)
  end

  def no_matches_error_shows_up
    no_matches_error.text
  end

  def attempt_to_find_non_existant_client
    wait_until_client_search_dashboard_visible(wait: 10)
    client_search_dashboard.set('zubair')
  end
end
