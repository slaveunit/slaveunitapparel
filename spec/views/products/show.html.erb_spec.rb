require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "Name",
      :description => "MyText",
      :colour => "Colour",
      :photo_file_name => "Photo File Name",
      :photo_content_type => "Photo Content Type",
      :photo_file_size => 1,
      :price => "9.99",
      :active => false,
      :size => "Size"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Colour/)
    expect(rendered).to match(/Photo File Name/)
    expect(rendered).to match(/Photo Content Type/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Size/)
  end
end
