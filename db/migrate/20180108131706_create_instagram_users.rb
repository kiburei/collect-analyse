class CreateInstagramUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :instagram_users do |t|
      t.string :year
      t.integer :hits

      t.timestamps
    end
  end
end
