class Kids::DashboardController < ApplicationController
  before_action :authenticate_kid!

  def index
    @parent = current_parent
    @kids = @parent.kids.includes(:lesson_progresses)
  end
end
