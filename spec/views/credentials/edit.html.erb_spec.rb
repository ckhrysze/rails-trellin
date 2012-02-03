require 'spec_helper'

describe "credentials/edit" do
  before(:each) do
    @credential = assign(:credential, stub_model(Credential,
      :provider => "MyString",
      :uid => "MyString",
      :name => "MyString",
      :email => "MyString",
      :nickname => "MyString"
    ))
  end

  it "renders the edit credential form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => credentials_path(@credential), :method => "post" do
      assert_select "input#credential_provider", :name => "credential[provider]"
      assert_select "input#credential_uid", :name => "credential[uid]"
      assert_select "input#credential_name", :name => "credential[name]"
      assert_select "input#credential_email", :name => "credential[email]"
      assert_select "input#credential_nickname", :name => "credential[nickname]"
    end
  end
end
