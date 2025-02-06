class QuestionsController < ApplicationController
  def ask
    # This will render the ask view
  end

  def answer
    @question = params[:question] # Get the question from the URL parameters
    @answer = generate_answer(@question) # Call a private method to get the answer
  end

  private

  def generate_answer(question)
    if question == 'I am going to work'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
