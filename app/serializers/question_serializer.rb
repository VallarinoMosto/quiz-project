class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :prompt, :answer1, :answer2, :answer3, :answer4, :correct_answer

  belongs_to :subject
end
