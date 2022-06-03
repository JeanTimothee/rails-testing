require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  # [...]
  test "lets a signed in user create a new product" do
    login_as users(:patrick)
    visit "/products/new"

    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Change your life: Learn to code"

    click_on "Create Product"

    assert_text "Change your life: Learn to code"
  end
end
