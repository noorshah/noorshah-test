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
  @full_name,@date_of_birth,@post_code=@client_page.add_client_details

end

Then("I the client is added successfully") do
  @home_page.client_is_added
  expect(@home_page.client_is_added).to be true
end

Then("I sign out of cases system") do
  @home_page.sign_out_successfully
end

When("I submit details of an existing client") do
  @home_page.add_a_client
  AddClientPage.new.submit_exising_client_details
end

Then("I get existing client error") do
  AddClientPage.new.duplicate_client_error.text=="1 possible duplicate client found"
end