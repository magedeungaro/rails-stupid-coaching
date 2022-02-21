class PagesController < ApplicationController
  def ask
    if params[:question]
      @answer = coach_answer_enhanced(params[:question])
    end
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message

    what_coach_wants_to_hear = 'I am going to work right now!'.downcase
    return '' if your_message.downcase == what_coach_wants_to_hear

    coach_answer = 'I don\'t care, get dressed and go to work!'

    coach_answer = 'Silly question, get dressed and go to work!' if your_message.end_with?('?')

    coach_answer
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!

    what_coach_wants_to_hear = 'I am going to work right now!'.upcase
    return '' if your_message.upcase == what_coach_wants_to_hear

    shouting = your_message == your_message.upcase

    motivation = 'I can feel your motivation! ' if shouting

    coach_answer = coach_answer(your_message)

    "#{motivation}#{coach_answer}"
  end
end
