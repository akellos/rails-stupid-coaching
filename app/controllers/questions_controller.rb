class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # If the message is I am going to work, the coach will answer Great!
    if params[:question].blank?
      # do sth
      @answer = "Ask me something!"
    elsif params[:question] == "I am going to work"
      # do answer "Great!"
      @answer = "Great!"
    elsif params[:question][-1, 1] == '?'
      # do answer "Silly question, get dressed and go to work!."
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
# localhost:3000/answer?question=what+time+is+it%3F
# localhost:3000/answer?question=I+am+going+to+work
