class AddManagerToProject < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :manager, foreign_key: true
  end
end
