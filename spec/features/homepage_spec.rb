require 'spec_helper'

feature 'homepage' do
  before { visit root_path }

  it 'should have the appropriate title' do
    expect(page).to have_title "CryptidTracker"
  end
  it 'should have a "signup" link' do
    expect(page).to have_link "Sign up"
  end
  it 'should have a "Login" link' do
    expect(page).to have_link "Login"
  end

  describe "clicking links" do
    it 'should take you to the "Sign up" page' do
      click_link "Sign up"
      expect(page).to have_title "Sign up"
    end

    it "should take you to the Login page" do
      click_link "Login"
      expect(page).to have_title "Login"
    end
  end
end
