class CreateMessageConfigs < ActiveRecord::Migration
  def change
    create_table :message_configs do |t|
      t.string :group
      t.string :biz_type
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end
