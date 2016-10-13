class UsersController < ApplicationController
  # TODO revise with only/except
  before_action :require_user, :dashboard, :schedule, :enrollment
  def dashboard
  end

  def enrollment
    @courses = Course.all
  end

  def schedule
    @schedules = Schedule.my_schedule(current_user.id)
  end
end
