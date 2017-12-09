class Ckeditor::Asset < ActiveRecord::Base
  include Ckeditor::Orm::ActiveRecord::AssetBase
  include Ckeditor::Backend::Paperclip
  #has_attached_file :media, :styles => {:thumb => "100x100>"}, :default_url => ""
end
