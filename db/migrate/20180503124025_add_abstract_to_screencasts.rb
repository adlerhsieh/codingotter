class AddAbstractToScreencasts < ActiveRecord::Migration[5.2]
  def change
    add_column :screencasts, :abstract, :text
  end
end
