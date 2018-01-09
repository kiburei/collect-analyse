class CreateTelegramUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :telegram_users do |t|
      t.string :year
      t.integer :hits

      t.timestamps
    end
  end
end
