class Recipe < ActiveRecord::Base
  has_many :foods, dependent: :destroy
  has_many :ingredients, through: :foods
  has_many :media, dependent: :destroy
  has_many :tags, through: :media

  before_save(:downcase_name)

private

  def downcase_name
    self.name = name.downcase
  end
end
