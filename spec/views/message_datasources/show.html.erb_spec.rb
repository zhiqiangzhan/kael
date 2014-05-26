require 'spec_helper'

describe "message_datasources/show" do
  before(:each) do
    @message_datasource = assign(:message_datasource, stub_model(MessageDatasource,
      :name => "Name",
      :adapter => "Adapter",
      :params => "Params"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Adapter/)
    rendered.should match(/Params/)
  end
end
