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
      if params[:athlete_id]
        @athlete = Athlete.find(params[:athlete_id]) 
        @athlete.template_id = @template.id
        @athlete.save
      end
      params[:exercises].each do |day, id|
       @template.workouts.create(day_number: day.split(/: */)[1].to_i, exercise_id: id)
      end
      redirect_to trainer_index_path
    else
      redirect_to trainer_index_path
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
    params.require(:template).permit(:name, :execise_id, :athlete_id)
  end
end
