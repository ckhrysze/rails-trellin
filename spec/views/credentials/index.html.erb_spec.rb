require 'spec_helper'

describe "credentials/index" do
  before(:each) do
    assign(:credentials, [
      stub_model(Credential,
        :provider => "Provider",
        :uid => "Uid",
        :name => "Name",
        :email => "Email",
        :nickname => "Nickname"
      ),
      stub_model(Credential,
        :provider => "Provider",
        :uid => "Uid",
        :name => "Name",
        :email => "Email",
        :nickname => "Nickname"
      )
    ])
  end

  it "renders a list of credentials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
  end
end
