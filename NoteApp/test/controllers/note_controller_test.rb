require 'test_helper'

class NoteControllerTest < ActionController::TestCase
 test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notes), "could not get index"
  end
  
  test "should create note" do
    assert_difference('Note.count') do
      Note.create(title:"Some titlee")
    end
  end
  
end
