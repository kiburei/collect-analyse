class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :medium

      t.timestamps
    end
  end
end
