require 'spec_helper'

describe "text_blocks/show" do
  before(:each) do
    @text_block = assign(:text_block, stub_model(TextBlock,
      :title => "Title",
      :context => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
