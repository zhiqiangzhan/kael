require 'spec_helper'

describe "message_templates/edit" do
  before(:each) do
    @message_template = assign(:message_template, stub_model(MessageTemplate,
      :message_config => nil,
      :template => "MyString"
    ))
  end

  it "renders the edit message_template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", message_template_path(@message_template), "post" do
      assert_select "input#message_template_message_config[name=?]", "message_template[message_config]"
      assert_select "input#message_template_template[name=?]", "message_template[template]"
    end
  end
end
