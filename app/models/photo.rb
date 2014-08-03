class Photo < ActiveRecord::Base
  has_attached_file :photo,{
    :styles => {
      :thumb => ["50x50#", :png]
    },
    :convert_options => {
      :thumb => "-gravity Center -crop 50x50+0+0",
      :thumb => "-gravity Center -crop 100x100+0+0",
    }
  }

  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
