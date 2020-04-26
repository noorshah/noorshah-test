Given("I log into the cases system successfully") do
  @login_page=LoginPage.new
  @home_page=HomePage.new
  @login_page.load
  @login_page.enter_credentials
  expect(@home_page).to have_welcome_message
end

When("I add a client by filling relevant details") do
  @home_page.add_a_client
  @client_page=AddClientPage.new
  @client_page.add_client_details
end

Then("I the client is added successfully") do
  @home_page.client_is_added
  puts @home_page.client_is_added
end
