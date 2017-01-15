require 'test_helper'

class QuetsionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quetsions_index_url
    assert_response :success
  end

  test "should get new" do
    get quetsions_new_url
    assert_response :success
  end

  test "should get update" do
    get quetsions_update_url
    assert_response :success
  end

  test "should get create" do
    get quetsions_create_url
    assert_response :success
  end

  test "should get show" do
    get quetsions_show_url
    assert_response :success
  end

  test "should get destroy" do
    get quetsions_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get quetsions_edit_url
    assert_response :success
  end

end
