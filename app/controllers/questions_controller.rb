class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = question.new
  end

  def update
  end

  def create
    @question = current_athlete.questions.new(question_params)
    if @question.save
      
    else
      
    end
    redirect_to athlete_index_path
  end

  def show
  end

  def destroy
  end

  def edit
  end

  private
  def question_params
      params.require(:question).permit(:content, :read, :athlete_id)
  end
end
