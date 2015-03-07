require 'test_helper'

class SnapshotControllerTest < ActionController::TestCase
  def setup
    super
    Snapshot.all.each { |snap| snap.update_attribute(:seen, false) }
  end

  # Replace this with your real tests.
  test "should get the welcome page" do
    get :welcome

    assert_response :success
    assert_template :welcome
  end

  test "should redirect to finish when all snaps seen" do
    Snapshot.all.each { |snap| snap.update_attribute(:seen, true) }

    get :welcome
    assert_redirected_to :action => :finished

    Snapshot.all.each { |snap| snap.update_attribute(:seen, false) }
  end

  test "a valid code should see the snapshot" do

    get :view, {:code => "thisis;atest"}

    assert_response :success
    assert_template :view
    assert assigns(:snapshot)
  end

  test "an invalid code should redirect to the welcome page" do
    get :view, {:code => "spider"}

    assert_redirected_to :action => :welcome
    assert_equal "Cheeky! That's not a valid code though", flash[:error]
  end
end
