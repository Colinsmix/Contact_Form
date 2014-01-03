class Contact < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_NAME = /^[a-zA-Z]+$/

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_presence_of :subject
  validates_presence_of :description

  validates_format_of :email, :with => VALID_EMAIL_REGEX, :on => :create 
  validates_format_of :first_name, :with => VALID_NAME, :on => :create, :multiline => true
  validates_format_of :last_name, :with => VALID_NAME, :on => :create, :multiline => true


end
