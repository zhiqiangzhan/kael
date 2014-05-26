class CreateMessageConfigs < ActiveRecord::Migration
  def change
    create_table :message_configs do |t|
      t.string :group
      t.string :bizType
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end
