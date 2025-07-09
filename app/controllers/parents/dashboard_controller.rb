class Parents::DashboardController < ApplicationController
  before_action :authenticate_parent!

  def index
  end
end
