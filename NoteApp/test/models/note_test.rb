require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  test "should not save note without title" do
    note = Note.new
    assert_not note.save, "Saved without a title"
  end
  
  test "should not save when another note with same title exists" do
    Note.new(title:"Test").save
    assert_not Note.new(title:"Test").save, "Saved another note with same title"
  end
  
  test "title should be longer than 3 characters" do
    assert_not Note.new(title:"Te").save, "Saved note with too short title"
  end
end
