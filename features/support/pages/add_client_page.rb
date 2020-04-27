class AddClientPage <SitePrism::Page


  element :full_client_consent,"input#client_full_consent_yes"

  element :consent_ethnicity,'input#client_consent_to_ethnicity'
  element :consent_disability_and_health,'input#client_consent_to_health_details'
  element :consent_religion,'input#client_consent_to_religion'
  element :consent_sexual_orientation,'input#client_consent_to_sexual_orientation'
  element :consent_trade_union_membership,'input#client_consent_to_trade_union_membership'

  element :consent_collecting_feedback,'input#client_consent_to_follow_up'
  element :consent_referals,'input#client_consent_to_share'
  element :consent_authority_to_act,'input#client_consent_to_act'


  element :continue_adding_client_details,'button[name=showForm]'
  element :client_first_name,'input#client_first_name'
  element :client_last_name,'input#client_last_name'
  element :client_day_of_birth,'input#client_date_of_birth_day'
  element :client_month_of_birth,'input#client_date_of_birth_month'
  element :client_year_of_birth,'input#client_date_of_birth_year'
  element :client_postcode,'input#client_postcode_search'
  element :find_address, :xpath,"//button[contains(@class,'btn btn-primary pull-right')]"
  element :unknown_address,'input#client_address_unknown'


  element :title,'select#client_title'
  element :middle_name,'input#client_middle_name'
  element :gender,'select#client_gender'
  element :transgender,'select#client_transgender'
  element :ethnicity,'select#client_ethnicity_id'

  element :client_email,'input#client_email'
  element :client_mobile_number,'input#client_mobile_phone'
  element :client_home_number,'input#client_home_phone'
  element :client_work_number,'input#client_work_phone'
  element :client_can_send_letter,'input#client_can_send_letter'
  element :client_prefered_contact_method,'input#client_preferred_contact_method_any'
  element :client_further_contact_information,'textarea#client_contact_information'
  element :client_feedback_contact_method_letter,'input#client_required_feedback_preference_0_letter'



  element :client_disability_long_term,'input#client_health_problem_long_term'
  element :visual_impairment,'input#client_disability_ids_0_3'
  element :speech_impairment,'input#client_disability_ids_0_4'
  element :hard_of_hearing,'input#client_disability_ids_0_5'
  element :deaf,'input#client_disability_ids_0_10'


  element :client_further_information,'input#client_further_profile_information'
  element :client_household_type,'select#client_household_type_id'
  element :client_housing_type,'select#client_housing_tenure_id'
  element :client_occupation,'select#client_occupation_id'
  element :client_national_insurance_number,'input#client_ni_number'
  element :client_sexual_orientation,'select#client_sexual_orientation'
  element :client_marital_status,'select#client_marital_status'
  element :client_nationality,'input#client_nationality_id'
  element :client_religion,'select#client_religion_id'

  element :save_client_info,'button.btn.btn-success.pull-right'



  def add_client_details
    client_consent_info
    continue_adding_client_details.click
    client_credentials
    client_contact_information
    client_disability_info
    client_further_info
    save_client_info.click
  end

  def client_consent_info
    full_client_consent.click
    consent_ethnicity.click
    consent_disability_and_health.click
    consent_religion.click
    consent_sexual_orientation.click
    consent_trade_union_membership.click
    consent_collecting_feedback.click
    consent_referals.click
    consent_authority_to_act.click
  end
  def client_credentials
    client_first_name.set('john'+(rand(50)).to_s)
    client_last_name.set('smith'+(rand(50)).to_s)
    client_day_of_birth.set((rand(1..28)).to_s)
    client_month_of_birth.set((rand(1..12)).to_s)
    client_year_of_birth.set((rand(1950..2020)).to_s)
    client_postcode.set('RH10 9AD')
    find_address.click
    unknown_address.click
  end
  def client_contact_information
    title.select('Mr')
    middle_name.set('mathew')
    gender.select('Male')
    ethnicity.select('White - British')

    client_email.set('john.smith@gmail.com')
    client_mobile_number.set('07123434343')
    client_home_number.set('01737773434')
    client_work_number.set('02022222222')
    client_can_send_letter.click
    client_further_contact_information.set('please make sure information is accessible')
    client_feedback_contact_method_letter.click
  end
  def client_disability_info
    client_disability_long_term.click
  end
  def client_further_info
    client_further_information.click
    client_household_type.select('Single Person')
    client_housing_type.select('Own Outright')
    client_occupation.select('Employed >= 30hrs p/w')
    client_national_insurance_number.set('SP411155A')
    client_sexual_orientation.select('Heterosexual/Straight')
    client_marital_status.select('Single')
    client_nationality.set('UK - British')
    find('div#client_nationality_id_listbox_0').click
    client_religion.select('Muslim')
  end
end