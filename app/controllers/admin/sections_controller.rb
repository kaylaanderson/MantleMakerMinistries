class Admin::SectionsController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    @section = Section.new
  end

  def create
    @course = Course.find(params[:course_id])
    @section = @course.sections.create(section_params)
    redirect_to admin_course_path(@course)
  end

  private

  def section_params
    params.require(:section).permit(:title)
  end
end
