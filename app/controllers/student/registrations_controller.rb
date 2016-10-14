class Student::RegistrationsController < ApplicationController
  before_action :require_user, only: [:new]
  def new
    @courses = Course.all
  end
end
