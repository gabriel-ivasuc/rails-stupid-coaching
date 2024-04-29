class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = generate_coach_answer(@question)
  end

  def generate_coach_answer(question)
    if question == 'i am going to work'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
