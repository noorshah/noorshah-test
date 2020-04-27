class ClientContactInfo <SitePrism::Section
  element :client_email,'input#client_email'
  element :client_mobile_number,'input#client_mobile_phone'
  element :client_home_number,'input#client_home_phone'
  element :client_work_number,'input#client_work_phone'
  element :client_can_send_letter,'input#client_can_send_letter'
  element :client_prefered_contact_method,'input#client_preferred_contact_method_any'
  element :client_further_contact_information,'textarea#client_contact_information'
  element :client_feedback_contact_method_letter,'input[value=letter]'
end