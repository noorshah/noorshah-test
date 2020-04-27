require_relative '../sections/client_consent'
require_relative '../sections/client_credentials'
require_relative '../sections/client_contact_information'
require_relative '../sections/client_further_info'
require_relative '../sections/client_disability_info'
class AddClientPage <SitePrism::Page


  element :full_client_consent,"input#client_full_consent_yes"
  section :client_consent,ClientConsent,:xpath,"(//div[contains(@class,'card')])[2]"

  element :continue_adding_client_details,'button[name=showForm]'
  section :client_credentials,ClientCredentials,:xpath,"(//div[contains(@class,'card')])[4]"

  section :client_contact_info,ClientContactInfo,:xpath,"((//div[contains(@class,'card')])[4]//div[contains(@class,'card card-secondary')])[3]"
  section :client_disability_info,ClientDisabilityInfo,:xpath,"((//div[contains(@class,'card')])[4]//div[contains(@class,'card card-secondary')])[4]"
  section :client_further_info,ClientFurtherInfo,:xpath,"((//div[contains(@class,'card')])[4]//div[contains(@class,'card card-secondary')])[5]"

  element :save_client_info,'button.btn.btn-success.pull-right'
  element :case_book_logo,'a.header__logo'
  element :duplicate_client_error,'div.alert.alert-info strong'



  def add_client_details
    client_consent_info
    continue_adding_client_details.click
    first_name,last_name,day_of_birth,month_of_birth,year_of_birth,post_code=submit_client_credentials
    client_contact_information
    submit_client_disability_info
    submit_client_further_info
    save_client_info.click
    full_name =first_name+' mathew '+last_name
    date_of_birth=day_of_birth+'-'+month_of_birth+'-'+year_of_birth
    return full_name,date_of_birth,post_code
  end

  def client_consent_info
    full_client_consent.click
    client_consent.consent_ethnicity.click
    client_consent.consent_disability_and_health.click
    client_consent.consent_religion.click
    client_consent.consent_sexual_orientation.click
    client_consent.consent_trade_union_membership.click
    client_consent.consent_collecting_feedback.click
    client_consent.consent_referals.click
    client_consent.consent_authority_to_act.click
  end
  def submit_client_credentials

    first_name='john'+(rand(50)).to_s
    last_name='smith'+(rand(50)).to_s
    day_of_birth=(rand(1..28)).to_s
    month_of_birth=(rand(1..12)).to_s
    year_of_birth=(rand(1940..2002)).to_s
    post_code='RH10 9AD'

    client_credentials.client_first_name.set(first_name)
    client_credentials.client_last_name.set(last_name)
    client_credentials.client_day_of_birth.set(day_of_birth)
    client_credentials.client_month_of_birth.set(month_of_birth)
    client_credentials.client_year_of_birth.set(year_of_birth)
    client_credentials.client_postcode.set(post_code)
    client_credentials.find_address.click
    client_credentials.address_look_up.select('Boeing UK Training & Flight Services, Boeing House, Crawley Business Quarter, Manor Royal, Crawley, West Sussex, RH10 9AD')

    client_credentials.title.select('Mr')
    client_credentials.middle_name.set('mathew')
    client_credentials.gender.select('Male')
    client_credentials.ethnicity.select('White - British')

    return first_name,last_name,day_of_birth,month_of_birth,year_of_birth,post_code
  end
  def client_contact_information
    client_contact_info.client_email.set('john.smith@gmail.com')
    client_contact_info.client_mobile_number.set('07123434343')
    client_contact_info.client_home_number.set('01737773434')
    client_contact_info.client_work_number.set('02022222222')
    client_contact_info.client_can_send_letter.click
    client_contact_info.client_further_contact_information.set('please make sure information is accessible')
    client_contact_info.client_feedback_contact_method_letter.click
  end
  def submit_client_disability_info
    client_disability_info.client_disability_long_term.click
  end
  def submit_client_further_info
    client_further_info.client_further_information.click
    client_further_info.client_household_type.select('Single Person')
    client_further_info.client_housing_type.select('Own Outright')
    client_further_info.client_occupation.select('Employed >= 30hrs p/w')
    client_further_info.client_national_insurance_number.set('SP411155A')
    client_further_info.client_sexual_orientation.select('Heterosexual/Straight')
    client_further_info.client_marital_status.select('Single')
    client_further_info.client_nationality.set('UK - British')
    find('div#client_nationality_id_listbox_0').click
    client_further_info.client_religion.select('Muslim')
  end

  def submit_exising_client_details
    full_client_consent.click
    continue_adding_client_details.click
    client_credentials.client_first_name.set('john')
    client_credentials.client_last_name.set('smith')
    client_credentials.client_day_of_birth.set('11')
    client_credentials.client_month_of_birth.set('06')
    client_credentials.client_year_of_birth.set('1988')
    client_credentials.client_postcode.set('RH10 9AD')
    client_credentials.find_address.click
  end

end