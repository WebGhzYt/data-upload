class User < ActiveRecord::Base
	has_attached_file :avatar
	# do_not_validate_attachment_file_type :avatar
	# validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_file_name :avatar, :matches => [/pdf\Z/, /jpe?g\Z/, /gif\Z/]
end
