class EnrollmentsController < ApplicationController
  before_action :require_user, only: [:index]
  def index
    @courses = Course.all
  end
end
