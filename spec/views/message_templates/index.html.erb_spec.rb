require 'spec_helper'

describe "message_templates/index" do
  before(:each) do
    assign(:message_templates, [
      stub_model(MessageTemplate,
        :message_config => nil,
        :template => "Template"
      ),
      stub_model(MessageTemplate,
        :message_config => nil,
        :template => "Template"
      )
    ])
  end

  it "renders a list of message_templates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Template".to_s, :count => 2
  end
end
