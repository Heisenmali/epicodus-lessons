class AboutController < ApplicationController
  def index
    @about_paras = Faker::Lorem.paragraphs(5)
  end
end
