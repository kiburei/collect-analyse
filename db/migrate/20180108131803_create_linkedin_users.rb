class CreateLinkedinUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :linkedin_users do |t|
      t.string :year
      t.integer :hits

      t.timestamps
    end
  end
end
