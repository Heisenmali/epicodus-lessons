class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :account, dependent: :destroy

  after_create :associate_account

  def associate_account
    username = self.email.split("@").first
    self.create_account(username: username)
  end
end
