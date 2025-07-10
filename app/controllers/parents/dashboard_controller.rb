class Parents::DashboardController < ApplicationController
  before_action :authenticate_parent!

  def index
    @kid = current_kid
    @modules = Lesson.select(:module_number).distinct.order(:module_number)

    @progress_by_module = @modules.map do |mod|
      lessons = Lesson.where(module_number: mod.module_number)
      done = lessons.joins(:lesson_progresses).where(lesson_progresses: { kid: @kid, completed: true }).count
      total = lessons.count
      [mod.module_number, done, total]
    end
  end
end
