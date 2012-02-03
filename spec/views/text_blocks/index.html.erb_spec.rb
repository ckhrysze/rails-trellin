require 'spec_helper'

describe "text_blocks/index" do
  before(:each) do
    assign(:text_blocks, [
      stub_model(TextBlock,
        :title => "Title",
        :context => "MyText"
      ),
      stub_model(TextBlock,
        :title => "Title",
        :context => "MyText"
      )
    ])
  end

  it "renders a list of text_blocks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
