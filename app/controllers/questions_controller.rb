class QuestionsController < ApplicationController
    
    def show
        @question = Question.find(params[:id])
    end
    
    def create
       Question.create(question_params)
       session[:current_user_email] = question_params[:email]
       redirect_to root_path
    end

    private
    
    def question_params
        params.require(:question).permit(:email, :body)
    end
    
        def show
        @question = Question.find(params[:id])
    end 
    
end





