class Project < ActiveRecord::Base
    mount_uploaders :photos, PhotoUploader
end
