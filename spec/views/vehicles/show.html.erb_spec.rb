require 'rails_helper'

RSpec.describe "vehicles/show", type: :view do
  before(:each) do
    assign(:vehicle, Vehicle.create!(
      name: "Name",
      image: "Image",
      drive_fee: "9.99",
      8,2: "8,2",
      purchase_fee: "9.99",
      8,2: "8,2"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/8,2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/8,2/)
  end
end
