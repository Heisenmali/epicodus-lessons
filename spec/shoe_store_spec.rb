require 'spec_helper'

#ASSOCIATION TESTING

describe Store do
  it { should have_many :brands }
end

describe Brand do
  it { should have_many :stores }
end

describe BrandStore do
  it { should belong_to :store }
  it { should belong_to :brand }
end

#DB TESTING

describe Store do
  it { should have_db_column :id }
  it { should have_db_column :name }
  it { should have_db_column :location }
end

describe Brand do
  it { should have_db_column :id }
  it { should have_db_column :name }
  it { should have_db_column :price }
end

describe BrandStore do
  it { should have_db_column :store_id }
  it { should have_db_column :brand_id }
end
