require "application_system_test_case"

class NxbsTest < ApplicationSystemTestCase
  setup do
    @nxb = nxbs(:one)
  end

  test "visiting the index" do
    visit nxbs_url
    assert_selector "h1", text: "Nxbs"
  end

  test "should create nxb" do
    visit nxbs_url
    click_on "New nxb"

    fill_in "Nxb name", with: @nxb.nxb_name
    fill_in "Release date", with: @nxb.release_date
    click_on "Create Nxb"

    assert_text "Nxb was successfully created"
    click_on "Back"
  end

  test "should update Nxb" do
    visit nxb_url(@nxb)
    click_on "Edit this nxb", match: :first

    fill_in "Nxb name", with: @nxb.nxb_name
    fill_in "Release date", with: @nxb.release_date
    click_on "Update Nxb"

    assert_text "Nxb was successfully updated"
    click_on "Back"
  end

  test "should destroy Nxb" do
    visit nxb_url(@nxb)
    click_on "Destroy this nxb", match: :first

    assert_text "Nxb was successfully destroyed"
  end
end
