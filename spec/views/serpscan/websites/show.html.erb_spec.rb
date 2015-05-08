require 'spec_helper'

RSpec.describe "serpscan/dashboard/websites/show", type: :view do
  let(:website) { Serpscan::Website.new('id' => 1, 'url' => 'example.com') }
  let(:keyword) { Serpscan::Keyword.new(parent: website, 
    'phrase' => 'Example Keyword', 
    'current_rank' => '111', 
    'day_change' => '222', 
    'month_change' => '333', 
    'alltime_change' => '444'
  )}

  it "displays website keywords" do
    @attributes = [:phrase, :current_rank, :day_change, :month_change, :alltime_change]
    @website = website 
    @keywords = [keyword]

    render

    expect(rendered).to match /example.com/
    expect(rendered).to match /Example Keyword/
    expect(rendered).to match /111/
    expect(rendered).to match /222/
    expect(rendered).to match /333/
    expect(rendered).to match /444/
  end
end
