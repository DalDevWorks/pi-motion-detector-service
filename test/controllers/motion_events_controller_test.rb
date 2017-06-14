require 'test_helper'

class MotionEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @motion_event = motion_events(:one)
  end

  test "should get index" do
    get motion_events_url
    assert_response :success
  end

  test "should get new" do
    get new_motion_event_url
    assert_response :success
  end

  test "should create motion_event" do
    assert_difference('MotionEvent.count') do
      post motion_events_url, params: { motion_event: { event: @motion_event.event } }
    end

    assert_redirected_to motion_event_url(MotionEvent.last)
  end

  test "should show motion_event" do
    get motion_event_url(@motion_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_motion_event_url(@motion_event)
    assert_response :success
  end

  test "should update motion_event" do
    patch motion_event_url(@motion_event), params: { motion_event: { event: @motion_event.event } }
    assert_redirected_to motion_event_url(@motion_event)
  end

  test "should destroy motion_event" do
    assert_difference('MotionEvent.count', -1) do
      delete motion_event_url(@motion_event)
    end

    assert_redirected_to motion_events_url
  end
end
