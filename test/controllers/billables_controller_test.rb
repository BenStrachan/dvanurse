require 'test_helper'

class BillablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @billable = billables(:one)
  end

  test "should get index" do
    get billables_url
    assert_response :success
  end

  test "should get new" do
    get new_billable_url
    assert_response :success
  end

  test "should create billable" do
    assert_difference('Billable.count') do
      post billables_url, params: { billable: { core_fee: @billable.core_fee, item_number: @billable.item_number, max_visit: @billable.max_visit, min_visit: @billable.min_visit, visit_type: @billable.visit_type } }
    end

    assert_redirected_to billable_url(Billable.last)
  end

  test "should show billable" do
    get billable_url(@billable)
    assert_response :success
  end

  test "should get edit" do
    get edit_billable_url(@billable)
    assert_response :success
  end

  test "should update billable" do
    patch billable_url(@billable), params: { billable: { core_fee: @billable.core_fee, item_number: @billable.item_number, max_visit: @billable.max_visit, min_visit: @billable.min_visit, visit_type: @billable.visit_type } }
    assert_redirected_to billable_url(@billable)
  end

  test "should destroy billable" do
    assert_difference('Billable.count', -1) do
      delete billable_url(@billable)
    end

    assert_redirected_to billables_url
  end
end
