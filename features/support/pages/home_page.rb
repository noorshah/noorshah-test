class HomePage <SitePrism::Page
  element :welcome_message,'h1'
  element :add_a_client,:text,'Add new client'

  def add_a_client_successfully
    add_a_client.click_link
  end
end
