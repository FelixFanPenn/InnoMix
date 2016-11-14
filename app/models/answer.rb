# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  attempt_id  :integer
#  question_id :integer
#  answer_text :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Answer < ActiveRecord::Base
    belongs_to :question
    belongs_to :attempt, inverse_of: :answers

    validates :question, :attempt, presence: true
    validate  :verify_answer_text, :if => "question.present?"

    if Rails::VERSION::MAJOR == 3
      attr_accessible :question_id, :attempt, :answer_text
    end

    private
    def verify_answer_text
      question.validate_answer(self)
    end
end
