class CreateTemplateStrategies < ActiveRecord::Migration
  def change
    create_table :template_strategies do |t|
      t.belongs_to :message_config, index: true
      t.string :strategy_type   #dynamic, static
      t.string :language
      t.string :script

      t.timestamps
    end
  end
end
