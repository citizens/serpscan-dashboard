require 'spec_helper'

describe 'websites' do
  it 'can add new websites', vcr: true do
    visit '/serpscan'
    click_on 'new_website'

    within('#new_website_modal') do
      page.should have_content 'New Website'
      fill_in 'url', with: 'example.com'
      click_on 'Create'
    end

    page.should have_content 'Website successfully created'
    page.should have_content 'example.com'
  end

  it 'can delete a website', vcr: true do
    visit '/serpscan'
    click_on 'Delete Website'

    within('#confirm-website-delete') do
      click_on 'Delete'
    end

    page.should_not have_content 'example.com'
  end
end