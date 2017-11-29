class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_attached_file :image, :styles => { :medium => "400x400", :thumb => "100x100>" }, :default_url => "avatar-default.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_attached_file :cover, :styles => { :medium => "400x400", :thumb => "100x100>" }, :default_url => "missing.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/


	def self.from_omniauth(auth)
	  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	    user.email = auth.info.email
	    user.password = Devise.friendly_token[0,20]
	    user.name = auth.info.name   # assuming the user model has a name
	    user.image = "https://graph.facebook.com/#{auth.uid}/picture?type=large"
	  end
	end

end
