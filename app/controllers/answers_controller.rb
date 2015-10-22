class AnswersController < ApplicationController
    def create
        question = Question.find(params[:answer][:question_id]
        question.answers.create(answer_params)
       /*Answer.create(answer_params)*/
        redirect_to root_path
    end    
    private
    def answer_params
        params.require(:answer).permit(:email, :body)
    end
end