class SnapshotController < ApplicationController
  def welcome
#    if Snapshot.completed
#     redirect_to :action => "finished"
#    end
  end

  def view
    snapshot = Snapshot.all(:conditions => ["code = ?",params[:code]])
    if snapshot.empty?
      flash[:error] = "Cheeky! That's not a valid code though"
      redirect_to :action => "welcome"
    end
  end

  def finished
  end

end
