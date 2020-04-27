When("I search for an existing client on homepage") do
  @home_page=HomePage.new
  @client_name='casper casper gasper'
  @home_page.search_for_existing_client(@client_name)

end

Then("I can find the clients details successfully") do
  @client_name==@home_page.get_found_client_details
end

Then("I can I search for that client and verify details") do
  @client_page.case_book_logo.click
  @home_page.search_for_existing_client(@full_name)
  @home_page.verify_client_details(@full_name,@date_of_birth)
end

When("I attempt to find a non existant client") do
  @home_page.attempt_to_find_non_existant_client

end

Then("I get an error {string}") do |error|
  error==@home_page.no_matches_error_shows_up
end
