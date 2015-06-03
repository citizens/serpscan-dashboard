require 'spec_helper'

describe 'keywords' do
  it 'can add new keywords', vcr: true do
    visit '/serpscan'
    click_on 'new_keyword'

    within('#new_keyword_modal') do
      page.should have_content 'New Keyword'
      fill_in 'keyword', with: 'example keyword'
      click_on 'Create'
    end

    page.should have_content 'Keyword successfully created'
    page.should have_content 'example keyword'
  end
end