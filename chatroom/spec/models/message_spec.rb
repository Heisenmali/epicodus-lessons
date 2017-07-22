require 'rails_helper'

describe Message do
  it { should belong_to(:account) }
  it { should belong_to(:chat) }
end
