class TemplatesController < ApplicationController
  def index
    @templates = Template.all
  end

  def edit
  end

  def show
  end

  def create
    puts params.inspect
    @template = Template.new(template_params)
    if @template.save
      params[:exercises].each do |day, id|
       @template.workouts.create(day_number: day, exercise_id: id)
      end
      redirect_to templates_path
    else
      redirect_to template_new_path
    end
  end

  def update
  end

  def destroy
  end

  def new
    @exercises = Exercise.all
    @template = Template.new
  end

  private
  def template_params
    params.require(:template).permit(:name, :execise_id)
  end
end
