require 'test_helper'

class ClaimDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @claim_datum = claim_data(:one)
  end

  test "should get index" do
    get claim_data_url
    assert_response :success
  end

  test "should get new" do
    get new_claim_datum_url
    assert_response :success
  end

  test "should create claim_datum" do
    assert_difference('ClaimDatum.count') do
      post claim_data_url, params: { claim_datum: { date_of_service: @claim_datum.date_of_service, provider_full_name: @claim_datum.provider_full_name, provider_id: @claim_datum.provider_id } }
    end

    assert_redirected_to claim_datum_url(ClaimDatum.last)
  end

  test "should show claim_datum" do
    get claim_datum_url(@claim_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_claim_datum_url(@claim_datum)
    assert_response :success
  end

  test "should update claim_datum" do
    patch claim_datum_url(@claim_datum), params: { claim_datum: { date_of_service: @claim_datum.date_of_service, provider_full_name: @claim_datum.provider_full_name, provider_id: @claim_datum.provider_id } }
    assert_redirected_to claim_datum_url(@claim_datum)
  end

  test "should destroy claim_datum" do
    assert_difference('ClaimDatum.count', -1) do
      delete claim_datum_url(@claim_datum)
    end

    assert_redirected_to claim_data_url
  end
end
