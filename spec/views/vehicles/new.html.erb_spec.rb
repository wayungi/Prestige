require 'rails_helper'

RSpec.describe 'vehicles/new', type: :view do
  before(:each) do
    assign(:vehicle, Vehicle.new(
                       name: 'MyString',
                       image: 'MyString',
                       drive_fee: '9.99',
                       purchase_fee: '9.99'
                     ))
  end

  it 'renders new vehicle form' do
    render

    assert_select 'form[action=?][method=?]', vehicles_path, 'post' do
      assert_select 'input[name=?]', 'vehicle[name]'

      assert_select 'input[name=?]', 'vehicle[image]'

      assert_select 'input[name=?]', 'vehicle[drive_fee]'

      assert_select 'input[name=?]', 'vehicle[purchase_fee]'
    end
  end
end
