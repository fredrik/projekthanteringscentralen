class Project < ActiveRecord::Base
  validates_presence_of :name, :name_normalized
  validates_uniqueness_of :name_normalized # name_normalized is the key.
  
  # TODO: use http://svn.6brand.com/projects/plugins/immutable_attributes/
  #attr_immutable :name_normalized
  
  def before_validation_on_create
    self.name_normalized = name.downcase
  end
end
