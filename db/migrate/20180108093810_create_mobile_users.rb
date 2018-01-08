class CreateMobileUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :mobile_users do |t|
      t.string :year
      t.integer :hits

      t.timestamps
    end
  end
end
