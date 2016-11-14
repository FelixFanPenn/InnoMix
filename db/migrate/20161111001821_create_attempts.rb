class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.references :survey
      t.references :user, polymorphic: true

      t.timestamps
    end
    add_index :attempts, :survey_id
    add_index :attempts, [:user_id, :user_type]
  end
end
