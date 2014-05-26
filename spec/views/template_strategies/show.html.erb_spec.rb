require 'spec_helper'

describe "template_strategies/show" do
  before(:each) do
    @template_strategy = assign(:template_strategy, stub_model(TemplateStrategy,
      :message_config => nil,
      :type => "Type",
      :script => "Script"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Type/)
    rendered.should match(/Script/)
  end
end
