require 'rails_helper'

feature 'Category' do
  let(:category) {FactoryGirl.create(:category)}

  scenario "truthy test" do
    expect(true).to eq true
  end

  scenario "expect index to display categories" do
    visit '/'
    expect(page).to have_text("Top Categories")
  end

end