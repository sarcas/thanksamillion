require 'test_helper'

class SnapshotTest < ActiveSupport::TestCase
  def setup
    super
    Snapshot.all.each { |snap| snap.update_attribute(:seen, false) }
  end

  # Replace this with your real tests.
  test "not complete if no snapshots have been seen" do
    assert_equal false, Snapshot::completed?
  end

  test "not complete if one snapshot hasn't been seen" do
    snap = Snapshot.new(:code => "new", :seen => true, :picture_link => "http://localhost/pic.png")
    assert_equal false, Snapshot::completed?
  end

  test "complete if all snapshots have been seen" do
    snapshots = Snapshot.where(:seen => false)
    snapshots.each { |snap| snap.update_attribute(:seen, true) }
    assert Snapshot::completed?
  end
end
