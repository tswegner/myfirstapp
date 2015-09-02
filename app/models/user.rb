class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :timeoutable
  has_many :orders
  has_many :payments
  after_create :signup_mail

  def signup_mail
    UserMailer.signup_mail(self).deliver
  end
end
