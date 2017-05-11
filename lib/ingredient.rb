class Ingredient < ActiveRecord::Base
  validates :name, presence: true, length: { in: 3..20 }, :uniqueness => true

  has_many :foods, dependent: :destroy
  has_many :recipes, through: :foods

  before_save(:downcase_name)

private

  def downcase_name
    self.name = name.downcase
  end
end
