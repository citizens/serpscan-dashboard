require 'spec_helper'

RSpec.describe "serpscan/dashboard/websites/index", type: :view do
  let(:website) { Serpscan::Website.new('id' => 1, 'url' => 'example.com') }
  
  it "displays all websites" do
    @websites = [website]  
    render
    expect(rendered).to match /example.com/
  end

  it "has add website form" do
    @websites = []
    render
    expect(rendered).to have_content 'New Website'
  end
end
