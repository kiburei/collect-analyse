class DropTableSocialMedia < ActiveRecord::Migration[5.1]
  def up
  	drop_table :social_media
  end

  def down
  	
  end
end
