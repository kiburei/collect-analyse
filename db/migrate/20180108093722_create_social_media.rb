class CreateSocialMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :social_media do |t|
      t.string :medium
      t.string :year
      t.integer :hits

      t.timestamps
    end
  end
end
