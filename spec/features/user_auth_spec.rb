require 'support/utilities'

describe "sign in process", :type => :feature do
  it "signs me up" do
    visit "/users/sign_up"
    within('#new_user') do
      fill_in "Email", :with => "test2@email.com"
      fill_in "Password", :with => "password"
      fill_in 'Password confirmation', with: 'password'
      click_button "Sign up"
    end
    expect(page).to have_content "Welcome! You have signed up successfully."
  end
end

describe 'login process', type: :feature do

  before :each do
    @test_user = User.create(email: 'test@email.com', password: UserAuthentication::DEFAULT_PASSWORD)
  end

  it 'logs me in' do
    login!(@test_user)

    expect(page).to have_content 'Signed in successfully.'
  end

  it 'logs me out' do
    login!(@test_user)
    click_link 'Logout'

    expect(page).to have_content 'Signed out successfully.'
  end
end

