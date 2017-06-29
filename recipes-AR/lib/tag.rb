class Tag < ActiveRecord::Base
  has_many :media, dependent: :destroy
  has_many :recipes, through: :media

  before_save(:downcase_name)

private

  def downcase_name
    self.name = name.downcase
  end
end
