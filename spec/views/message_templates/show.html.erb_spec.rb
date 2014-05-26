require 'spec_helper'

describe "message_templates/show" do
  before(:each) do
    @message_template = assign(:message_template, stub_model(MessageTemplate,
      :message_config => nil,
      :template => "Template"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Template/)
  end
end
