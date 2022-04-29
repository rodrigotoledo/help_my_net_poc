require "test_helper"

class FixesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fix = fixes(:one)
  end

  test "should get index" do
    get fixes_url, as: :json
    assert_response :success
  end

  test "should create fix" do
    assert_difference("Fix.count") do
      post fixes_url, params: { fix: { address: @fix.address, description: @fix.description, professional: @fix.professional, user: @fix.user } }, as: :json
    end

    assert_response :created
  end

  test "should show fix" do
    get fix_url(@fix), as: :json
    assert_response :success
  end

  test "should update fix" do
    patch fix_url(@fix), params: { fix: { address: @fix.address, description: @fix.description, professional: @fix.professional, user: @fix.user } }, as: :json
    assert_response :success
  end

  test "should destroy fix" do
    assert_difference("Fix.count", -1) do
      delete fix_url(@fix), as: :json
    end

    assert_response :no_content
  end
end
