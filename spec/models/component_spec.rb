require 'rails_helper'

describe Component do
  it { should belong_to :post }
  it { should validate_presence_of :component_type }
  it { should validate_presence_of :content }
end