require 'spec_helper'

describe Contact do

  it { should validate_presence_of :email }
  it { should validate_presence_of :subject }
  it { should validate_presence_of :description }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }

  it { should have_valid(:first_name).when('John','Sally') }
  it { should_not have_valid(:first_name).when('R2D2','$$') }

  it { should have_valid(:last_name).when('Smith','Fields') }
  it { should_not have_valid(:last_name).when('44','$$') }

  it { should have_valid(:email).when('example@example.com') }
  it { should_not have_valid(:email).when('example.com','jkdsf@') }




end
