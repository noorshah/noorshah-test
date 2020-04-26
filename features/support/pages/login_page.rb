class LoginPage <SitePrism::Page
  set_url 'https://casebook.qa.citizensadvice.org.uk/'

  element :user_name, '#okta-signin-username'
  element :password, '#okta-signin-password'
  element :sign_in,'input#okta-signin-submit'


  def enter_credentials
    user_name.set('qa_casebook_adviser@citizensadvice.org.uk')
    password.set('38.j4GX;Mbh/$f,e')
    sign_in.click
  end

end