require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "Name",
        :description => "MyText",
        :colour => "Colour",
        :photo_file_name => "Photo File Name",
        :photo_content_type => "Photo Content Type",
        :photo_file_size => 1,
        :price => "9.99",
        :active => false,
        :size => "Size"
      ),
      Product.create!(
        :name => "Name",
        :description => "MyText",
        :colour => "Colour",
        :photo_file_name => "Photo File Name",
        :photo_content_type => "Photo Content Type",
        :photo_file_size => 1,
        :price => "9.99",
        :active => false,
        :size => "Size"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Colour".to_s, :count => 2
    assert_select "tr>td", :text => "Photo File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Photo Content Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
  end
end
