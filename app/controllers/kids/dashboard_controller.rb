class Kids::DashboardController < ApplicationController
  before_action :authenticate_kid!

  def index
  end
end
