require 'test_helper'

class TopicssesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topicss = topicsses(:one)
  end

  test "should get index" do
    get topicsses_url
    assert_response :success
  end

  test "should get new" do
    get new_topicss_url
    assert_response :success
  end

  test "should create topicss" do
    assert_difference('Topicss.count') do
      post topicsses_url, params: { topicss: { description: @topicss.description, title: @topicss.title } }
    end

    assert_redirected_to topicss_url(Topicss.last)
  end

  test "should show topicss" do
    get topicss_url(@topicss)
    assert_response :success
  end

  test "should get edit" do
    get edit_topicss_url(@topicss)
    assert_response :success
  end

  test "should update topicss" do
    patch topicss_url(@topicss), params: { topicss: { description: @topicss.description, title: @topicss.title } }
    assert_redirected_to topicss_url(@topicss)
  end

  test "should destroy topicss" do
    assert_difference('Topicss.count', -1) do
      delete topicss_url(@topicss)
    end

    assert_redirected_to topicsses_url
  end
end
