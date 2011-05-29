class Snapshot < ActiveRecord::Base

  def self.completed?
   snapshots = Snapshot.all()
   complete = Snapshot.all(:conditions => "seen = true")
   if(snapshots.count == complete.count)
     return true
   else
     return false
   end
  end
end
