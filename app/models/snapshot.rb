class Snapshot < ActiveRecord::Base

  def completed?
    false
  end
end
