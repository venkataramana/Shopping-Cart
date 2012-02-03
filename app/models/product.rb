class Product < ActiveRecord::Base
        belongs_to :Category
        has_attached_file :kvr, :styles => { :medium => "300x300>", :thumb => "100x100#" }
#        validates_attachment_presence :kvr
end

