# == Schema Information
#
# Table name: questions
#
#  id               :integer          not null, primary key
#  survey_id        :integer
#  type             :string
#  question_text    :string
#  position         :integer
#  answer_options   :text
#  validation_rules :text
#  created_at       :datetime
#  updated_at       :datetime
#

module Questions
    class Checkbox < Question
      validates :answer_options, :presence => true

      def options
        answer_options.split("\r\n")
      end

      def validate_answer(answer)
        super(answer)

        if rules[:presence] == "1" || answer.answer_text.present?
          answer.answer_text.split("\r\n").each do |value|
            answer.errors.add(:answer_text, :invalid) unless options.include?(value)
          end
        end
      end
    end
  end
