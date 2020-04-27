class ClientCredentials <SitePrism::Section
  element :client_first_name,'input#client_first_name'
  element :client_last_name,'input#client_last_name'
  element :client_day_of_birth,'input#client_date_of_birth_day'
  element :client_month_of_birth,'input#client_date_of_birth_month'
  element :client_year_of_birth,'input#client_date_of_birth_year'
  element :client_postcode,'input#client_postcode_search'
  element :find_address, :xpath,"//button[contains(@class,'btn btn-primary pull-right')]"
  element :address_look_up,'select#cab-input-id-0'
  element :unknown_address,'input#client_address_unknown'

  element :title,'select#client_title'
  element :middle_name,'input#client_middle_name'
  element :gender,'select#client_gender'
  element :transgender,'select#client_transgender'
  element :ethnicity,'select#client_ethnicity_id'
end