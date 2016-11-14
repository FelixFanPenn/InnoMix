# == Schema Information
#
# Table name: attempts
#
#  id         :integer          not null, primary key
#  survey_id  :integer
#  user_id    :integer
#  user_type  :string
#  created_at :datetime
#  updated_at :datetime
#

class Attempt < ActiveRecord::Base
    belongs_to :survey
    belongs_to :user, polymorphic: true
    has_many   :answers, inverse_of: :attempt, autosave: true

    if Rails::VERSION::MAJOR == 3
      attr_accessible :survey, :user
    end
end
