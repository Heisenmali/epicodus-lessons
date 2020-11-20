require 'rails_helper'

describe Post do 
  it { should have_many :components }
  it { should validate_presence_of :author }
  it { should validate_presence_of :title }
  it { should validate_presence_of :teaser }
  it { should validate_presence_of :media }
  it { should validate_presence_of :date }
end