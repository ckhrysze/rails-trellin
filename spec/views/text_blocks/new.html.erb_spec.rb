require 'spec_helper'

describe "text_blocks/new" do
  before(:each) do
    assign(:text_block, stub_model(TextBlock,
      :title => "MyString",
      :context => "MyText"
    ).as_new_record)
  end

  it "renders new text_block form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => text_blocks_path, :method => "post" do
      assert_select "input#text_block_title", :name => "text_block[title]"
      assert_select "textarea#text_block_context", :name => "text_block[context]"
    end
  end
end
