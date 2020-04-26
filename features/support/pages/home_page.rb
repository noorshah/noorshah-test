class HomePage <SitePrism::Page
  element :welcome_message,'h1'
  element :add_a_client, :xpath,"//a[contains(@class, 'btn btn-primary float-right ml-2')]"
  element :success_message,'.flash-message'

  def add_a_client
    wait_until_add_a_client_visible(wait: 10)
    add_a_client.click
  end

  def client_is_added
    wait_until_success_message_visible(wait: 10)
  end
end
