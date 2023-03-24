require "test_helper"

class DislikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dislike = dislikes(:one)
  end

  test "should get index" do
    get dislikes_url, as: :json
    assert_response :success
  end

  test "should create dislike" do
    assert_difference("Dislike.count") do
      post dislikes_url, params: { dislike: { blog_id: @dislike.blog_id, user_id: @dislike.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show dislike" do
    get dislike_url(@dislike), as: :json
    assert_response :success
  end

  test "should update dislike" do
    patch dislike_url(@dislike), params: { dislike: { blog_id: @dislike.blog_id, user_id: @dislike.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy dislike" do
    assert_difference("Dislike.count", -1) do
      delete dislike_url(@dislike), as: :json
    end

    assert_response :no_content
  end
end
