require "rails_helper"

describe List do
  it { should validate_presence_of :description }
  it { should belong_to :list }
end