require "test_helper"

class NxbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nxb = nxbs(:one)
  end

  test "should get index" do
    get nxbs_url
    assert_response :success
  end

  test "should get new" do
    get new_nxb_url
    assert_response :success
  end

  test "should create nxb" do
    assert_difference("Nxb.count") do
      post nxbs_url, params: { nxb: { nxb_name: @nxb.nxb_name, release_date: @nxb.release_date } }
    end

    assert_redirected_to nxb_url(Nxb.last)
  end

  test "should show nxb" do
    get nxb_url(@nxb)
    assert_response :success
  end

  test "should get edit" do
    get edit_nxb_url(@nxb)
    assert_response :success
  end

  test "should update nxb" do
    patch nxb_url(@nxb), params: { nxb: { nxb_name: @nxb.nxb_name, release_date: @nxb.release_date } }
    assert_redirected_to nxb_url(@nxb)
  end

  test "should destroy nxb" do
    assert_difference("Nxb.count", -1) do
      delete nxb_url(@nxb)
    end

    assert_redirected_to nxbs_url
  end
end
