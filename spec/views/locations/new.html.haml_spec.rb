require 'rails_helper'

RSpec.describe "locations/new", :type => :view do
  before(:each) do
    assign(:location, Location.new(
      :depot_id => 1,
      :block => "MyString",
      :column => 1,
      :level => 1,
      :mixed => false
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_depot_id[name=?]", "location[depot_id]"

      assert_select "input#location_block[name=?]", "location[block]"

      assert_select "input#location_column[name=?]", "location[column]"

      assert_select "input#location_level[name=?]", "location[level]"

      assert_select "input#location_mixed[name=?]", "location[mixed]"
    end
  end
end
