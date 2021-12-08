class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :category

  has_many :questions
end
