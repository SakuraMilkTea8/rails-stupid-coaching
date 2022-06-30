class QuestionsController < ApplicationController
  def ask; end

  def answer
    @user_q = params[:userQ]
    @coach_answer = if @user_q.downcase == 'i am going to work'
                      'Great!'
                    elsif @user_q.downcase.end_with?('?')
                      'Silly question, get dressed and go to work!'
                    else
                      "I don't care, get dressed and go to work!"
                    end
  end
end
