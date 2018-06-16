require 'test_helper'

class TurfInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turf_info = turf_infos(:one)
  end

  test "should get index" do
    get turf_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_turf_info_url
    assert_response :success
  end

  test "should create turf_info" do
    assert_difference('TurfInfo.count') do
      post turf_infos_url, params: { turf_info: { address: @turf_info.address, available: @turf_info.available, charges: @turf_info.charges, email: @turf_info.email, landmark: @turf_info.landmark, name: @turf_info.name, phone: @turf_info.phone } }
    end

    assert_redirected_to turf_info_url(TurfInfo.last)
  end

  test "should show turf_info" do
    get turf_info_url(@turf_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_turf_info_url(@turf_info)
    assert_response :success
  end

  test "should update turf_info" do
    patch turf_info_url(@turf_info), params: { turf_info: { address: @turf_info.address, available: @turf_info.available, charges: @turf_info.charges, email: @turf_info.email, landmark: @turf_info.landmark, name: @turf_info.name, phone: @turf_info.phone } }
    assert_redirected_to turf_info_url(@turf_info)
  end

  test "should destroy turf_info" do
    assert_difference('TurfInfo.count', -1) do
      delete turf_info_url(@turf_info)
    end

    assert_redirected_to turf_infos_url
  end
end
