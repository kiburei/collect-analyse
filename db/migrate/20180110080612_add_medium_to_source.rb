class AddMediumToSource < ActiveRecord::Migration[5.1]
  def change
    add_column :sources, :medium, :string
  end
end
