class QuestionsController < ApplicationController

    def index
        questions = Question.all
        render json: questions, status: :ok
    end


    def show 
        question = Question.find(params[:id])
        render json: question, status: :ok
    end

    def update
        question = Question.find(params[:id])
        question.update(correct_answer: params[:correct_answer])
        render json: question, status: :ok
    end

    def create
        question = Question.create(
            prompt: params[:prompt],
            answer1: params[:answer1],
            answer2: params[:answer2],
            answer3: params[:answer3],
            answer4: params[:answer4],
            correct_answer: params[:correct_answer],
            subject_id: params[:subject_id]
          )
          render json: question, status: :ok
    end

    def delete
        question = Question.find(params[:id])
        question.destroy
    
    end
end
