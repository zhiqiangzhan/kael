class CreateMessageTemplates < ActiveRecord::Migration
  def change
    create_table :message_templates do |t|
      t.belongs_to :message_config, index: true
      t.string :template

      t.timestamps
    end
  end
end
