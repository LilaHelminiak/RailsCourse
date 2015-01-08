require 'test_helper'

class NoteFlowTest < ActionDispatch::IntegrationTest
  test 'add note'
    get "/notes/index"
    assert_response :success
  end
