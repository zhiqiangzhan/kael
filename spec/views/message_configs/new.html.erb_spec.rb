require 'spec_helper'

describe "message_configs/new" do
  before(:each) do
    assign(:message_config, stub_model(MessageConfig,
      :group => "MyString",
      :biz_type => "MyString",
      :name => "MyString",
      :desc => "MyString"
    ).as_new_record)
  end

  it "renders new message_config form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", message_configs_path, "post" do
      assert_select "input#message_config_group[name=?]", "message_config[group]"
      assert_select "input#message_config_biz_type[name=?]", "message_config[biz_type]"
      assert_select "input#message_config_name[name=?]", "message_config[name]"
      assert_select "input#message_config_desc[name=?]", "message_config[desc]"
    end
  end
end
