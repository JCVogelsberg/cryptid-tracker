require 'spec_helper'

feature 'homepage' do
  before { visit root_path }

  it 'should have the appropriate title' do
    expect(page).to have_title "CryptidTracker"
  end
end
