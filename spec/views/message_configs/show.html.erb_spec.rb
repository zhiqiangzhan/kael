require 'spec_helper'

describe "message_configs/show" do
  before(:each) do
    @message_config = assign(:message_config, stub_model(MessageConfig,
      :group => "Group",
      :bizType => "Biz Type",
      :name => "Name",
      :desc => "Desc"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Group/)
    rendered.should match(/Biz Type/)
    rendered.should match(/Name/)
    rendered.should match(/Desc/)
  end
end
