require 'spec_helper'

describe "template_strategies/new" do
  before(:each) do
    assign(:template_strategy, stub_model(TemplateStrategy,
      :message_config => nil,
      :type => "",
      :script => "MyString"
    ).as_new_record)
  end

  it "renders new template_strategy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", template_strategies_path, "post" do
      assert_select "input#template_strategy_message_config[name=?]", "template_strategy[message_config]"
      assert_select "input#template_strategy_type[name=?]", "template_strategy[type]"
      assert_select "input#template_strategy_script[name=?]", "template_strategy[script]"
    end
  end
end
