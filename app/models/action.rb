class Action < ActiveRecord::Base
  belongs_to :project
  validates_presence_of :name, :project_id
end
