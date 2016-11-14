class CreateScheduleSurveys < ActiveRecord::Migration
  def change
    create_table :schedule_surveys do |t|
      t.references :user, index: true, foreign_key: true
      t.references :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
