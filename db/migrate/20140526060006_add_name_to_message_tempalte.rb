class AddNameToMessageTempalte < ActiveRecord::Migration
  def change
    add_column :message_templates, :name, :string
  end
end
