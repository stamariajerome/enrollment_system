class MySchedulesController < ApplicationController
  before_action :require_user, only: [:index]
  def index
    @schedules = Schedule.my_schedule(current_user.id)
  end
end
