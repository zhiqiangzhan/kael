require 'spec_helper'

describe "template_strategies/index" do
  before(:each) do
    assign(:template_strategies, [
      stub_model(TemplateStrategy,
        :message_config => nil,
        :type => "Type",
        :script => "Script"
      ),
      stub_model(TemplateStrategy,
        :message_config => nil,
        :type => "Type",
        :script => "Script"
      )
    ])
  end

  it "renders a list of template_strategies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Script".to_s, :count => 2
  end
end
