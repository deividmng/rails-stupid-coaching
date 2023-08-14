class QuestionsController < ApplicationController
  def ask

  end
  def answer
    @question = params[:question] # Aquí obtendrás el valor del input con el atributo name="question"
    # Tu código para responder a la pregunta, por ejemplo:
    @answer = if @question == 'red'
                'red !'
              elsif @question.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
class QuestionsController < ApplicationController
  def answer
    @color = params[:color] # Cambia la variable a @color

    @answer = case @color
              when 'red'
                'You chose the color Red!'
              when 'blue'
                'You chose the color Blue!'
              when 'green'
                'You chose the color Green!'
              else
                'Invalid color selection!'
              end

    render 'answer'
  end
end

