class CreateMessageDatasources < ActiveRecord::Migration
  def change
    create_table :message_datasources do |t|
      t.string :name
      t.string :adapter
      t.string :params

      t.timestamps
    end
  end
end
