require 'spec_helper'

describe "message_datasources/index" do
  before(:each) do
    assign(:message_datasources, [
      stub_model(MessageDatasource,
        :name => "Name",
        :adapter => "Adapter",
        :params => "Params"
      ),
      stub_model(MessageDatasource,
        :name => "Name",
        :adapter => "Adapter",
        :params => "Params"
      )
    ])
  end

  it "renders a list of message_datasources" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Adapter".to_s, :count => 2
    assert_select "tr>td", :text => "Params".to_s, :count => 2
  end
end
