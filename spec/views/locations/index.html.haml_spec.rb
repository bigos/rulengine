require 'rails_helper'

RSpec.describe "locations/index", :type => :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :depot_id => 1,
        :block => "Block",
        :column => 2,
        :level => 3,
        :mixed => false
      ),
      Location.create!(
        :depot_id => 1,
        :block => "Block",
        :column => 2,
        :level => 3,
        :mixed => false
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Block".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
