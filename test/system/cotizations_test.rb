require "application_system_test_case"

class CotizationsTest < ApplicationSystemTestCase
  setup do
    @cotization = cotizations(:one)
  end

  test "visiting the index" do
    visit cotizations_url
    assert_selector "h1", text: "Cotizations"
  end

  test "creating a Cotization" do
    visit cotizations_url
    click_on "New Cotization"

    fill_in "Email", with: @cotization.email
    fill_in "Message", with: @cotization.message
    fill_in "Name", with: @cotization.name
    fill_in "Phone", with: @cotization.phone
    fill_in "Product", with: @cotization.product_id
    click_on "Create Cotization"

    assert_text "Cotization was successfully created"
    click_on "Back"
  end

  test "updating a Cotization" do
    visit cotizations_url
    click_on "Edit", match: :first

    fill_in "Email", with: @cotization.email
    fill_in "Message", with: @cotization.message
    fill_in "Name", with: @cotization.name
    fill_in "Phone", with: @cotization.phone
    fill_in "Product", with: @cotization.product_id
    click_on "Update Cotization"

    assert_text "Cotization was successfully updated"
    click_on "Back"
  end

  test "destroying a Cotization" do
    visit cotizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cotization was successfully destroyed"
  end
end
