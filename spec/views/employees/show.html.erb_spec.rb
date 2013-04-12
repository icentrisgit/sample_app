require 'spec_helper'

describe "employees/show" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :emp_id => "Emp",
      :first_name => "First Name",
      :last_name => "Last Name",
      :gender => "Gender",
      :email_id => "Email",
      :address => "MyText",
      :phone_number => 1,
      :pan_number => 2,
      :bank_acc_no => 3,
      :designation => "Designation",
      :grossCTC => "Gross Ctc",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Emp/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Gender/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Designation/)
    rendered.should match(/Gross Ctc/)
    rendered.should match(/Status/)
  end
end
