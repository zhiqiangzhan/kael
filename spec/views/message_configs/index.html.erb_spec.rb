require 'spec_helper'

describe "message_configs/index" do
  before(:each) do
    assign(:message_configs, [
      stub_model(MessageConfig,
        :group => "Group",
        :bizType => "Biz Type",
        :name => "Name",
        :desc => "Desc"
      ),
      stub_model(MessageConfig,
        :group => "Group",
        :bizType => "Biz Type",
        :name => "Name",
        :desc => "Desc"
      )
    ])
  end

  it "renders a list of message_configs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Group".to_s, :count => 2
    assert_select "tr>td", :text => "Biz Type".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
  end
end
