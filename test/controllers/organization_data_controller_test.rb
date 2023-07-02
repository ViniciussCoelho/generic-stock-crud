require 'test_helper'

class OrganizationDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_datum = organization_data(:one)
  end

  test "should get index" do
    get organization_data_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_datum_url
    assert_response :success
  end

  test "should create organization_datum" do
    assert_difference('OrganizationDatum.count') do
      post organization_data_url, params: { organization_datum: {  } }
    end

    assert_redirected_to organization_datum_url(OrganizationDatum.last)
  end

  test "should show organization_datum" do
    get organization_datum_url(@organization_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_datum_url(@organization_datum)
    assert_response :success
  end

  test "should update organization_datum" do
    patch organization_datum_url(@organization_datum), params: { organization_datum: {  } }
    assert_redirected_to organization_datum_url(@organization_datum)
  end

  test "should destroy organization_datum" do
    assert_difference('OrganizationDatum.count', -1) do
      delete organization_datum_url(@organization_datum)
    end

    assert_redirected_to organization_data_url
  end
end
