require 'rails_helper'

RSpec.describe "locations/show", :type => :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :depot_id => 1,
      :block => "Block",
      :column => 2,
      :level => 3,
      :mixed => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Block/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
  end
end
