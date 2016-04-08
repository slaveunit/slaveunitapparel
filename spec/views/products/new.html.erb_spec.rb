require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :description => "MyText",
      :colour => "MyString",
      :photo_file_name => "MyString",
      :photo_content_type => "MyString",
      :photo_file_size => 1,
      :price => "9.99",
      :active => false,
      :size => "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "textarea#product_description[name=?]", "product[description]"

      assert_select "input#product_colour[name=?]", "product[colour]"

      assert_select "input#product_photo_file_name[name=?]", "product[photo_file_name]"

      assert_select "input#product_photo_content_type[name=?]", "product[photo_content_type]"

      assert_select "input#product_photo_file_size[name=?]", "product[photo_file_size]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_active[name=?]", "product[active]"

      assert_select "input#product_size[name=?]", "product[size]"
    end
  end
end
