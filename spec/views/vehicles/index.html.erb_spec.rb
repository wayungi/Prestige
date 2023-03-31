require 'rails_helper'

RSpec.describe 'vehicles/index', type: :view do
  before(:each) do
    assign(:vehicles, [
             Vehicle.create!(
               name: 'Name',
               image: 'Image',
               drive_fee: '9.99',
               purchase_fee: '9.99'
             ),
             Vehicle.create!(
               name: 'Name',
               image: 'Image',
               drive_fee: '9.99',
               purchase_fee: '9.99'
             )
           ])
  end

  it 'renders a list of vehicles' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Image'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('9.99'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('8,2'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('9.99'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('8,2'.to_s), count: 2
  end
end
