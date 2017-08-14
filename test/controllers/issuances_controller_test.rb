require 'test_helper'

class IssuancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issuance = issuances(:one)
  end

  test "should get index" do
    get issuances_url
    assert_response :success
  end

  test "should get new" do
    get new_issuance_url
    assert_response :success
  end

  test "should create issuance" do
    assert_difference('Issuance.count') do
      post issuances_url, params: { issuance: { book_id: @issuance.book_id, issuance_date: @issuance.issuance_date, issued_to_id: @issuance.issued_to_id, issuer_id: @issuance.issuer_id, remark: @issuance.remark, return_date: @issuance.return_date, uuid: @issuance.uuid } }
    end

    assert_redirected_to issuance_url(Issuance.last)
  end

  test "should show issuance" do
    get issuance_url(@issuance)
    assert_response :success
  end

  test "should get edit" do
    get edit_issuance_url(@issuance)
    assert_response :success
  end

  test "should update issuance" do
    patch issuance_url(@issuance), params: { issuance: { book_id: @issuance.book_id, issuance_date: @issuance.issuance_date, issued_to_id: @issuance.issued_to_id, issuer_id: @issuance.issuer_id, remark: @issuance.remark, return_date: @issuance.return_date, uuid: @issuance.uuid } }
    assert_redirected_to issuance_url(@issuance)
  end

  test "should destroy issuance" do
    assert_difference('Issuance.count', -1) do
      delete issuance_url(@issuance)
    end

    assert_redirected_to issuances_url
  end
end
