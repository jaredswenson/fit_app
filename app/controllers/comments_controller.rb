class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def update
  end

  def create
     @commenter = current_trainer || current_athlete
     @comment = @commenter.comments.new(comment_params)
    if @comment.save! && @commenter == current_trainer
      @comment.question.update_attribute(:read, true)
    else
      
    end
    if @commenter == current_athlete
      redirect_to athlete_index_path
    else
      redirect_to trainer_index_path
    end

  end

  def show
  end

  def destroy
  end

  def edit
  end

  private
  def comment_params
      params.require(:comment).permit(:content, :trainer, :athlete_id, :trainer_id, :question_id)
  end
end
