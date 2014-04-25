require 'spec_helper'

module UserAuthentication
  DEFAULT_PASSWORD = 'password'
end

def login!(user)
  visit '/users/sign_in'
  within('#new_user') do
    fill_in "Email", :with => user.email
    fill_in "Password", :with => UserAuthentication::DEFAULT_PASSWORD
    click_button "Sign in"
  end
end
