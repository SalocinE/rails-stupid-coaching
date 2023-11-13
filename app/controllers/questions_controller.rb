class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @question = params[:question]
    @answers = ['Great!', 'Silly question, get dressed and go to work!', 'I don\'t care, get dressed and go to work!']

    if @question == "#{/.+/} going to work"
      @answers = @answers[0]
    elsif @question[-1] == '?'
      @answers = @answers[1]
    elsif @question == ''
      @answers = '...'
    else
      @answers = @answers[2]
    end
  end
end
