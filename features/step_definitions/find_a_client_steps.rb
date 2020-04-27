When("I search for an existing client on homepage") do
  @home_page=HomePage.new
  @home_page.search_for_existing_client
end

Then("I can find the clients details successfully") do

end

Then("I can also find details of a client added recently") do

end
