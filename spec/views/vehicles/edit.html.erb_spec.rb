require 'rails_helper'

RSpec.describe "vehicles/edit", type: :view do
  let(:vehicle) {
    Vehicle.create!(
      name: "MyString",
      image: "MyString",
      drive_fee: "9.99",
      8,2: "MyString",
      purchase_fee: "9.99",
      8,2: "MyString"
    )
  }

  before(:each) do
    assign(:vehicle, vehicle)
  end

  it "renders the edit vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicle_path(vehicle), "post" do

      assert_select "input[name=?]", "vehicle[name]"

      assert_select "input[name=?]", "vehicle[image]"

      assert_select "input[name=?]", "vehicle[drive_fee]"

      assert_select "input[name=?]", "vehicle[8,2]"

      assert_select "input[name=?]", "vehicle[purchase_fee]"

      assert_select "input[name=?]", "vehicle[8,2]"
    end
  end
end
