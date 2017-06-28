class Project < ActiveRecord::Base
    mount_uploaders :photos, PhotoUploader
    has_many :comments, dependent: :destroy    
end
