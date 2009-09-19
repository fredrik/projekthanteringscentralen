class Project < ActiveRecord::Base
  has_one :next_action, :class_name => 'Action', :order => 'priority'
  has_many :actions, :order => 'priority' # TODO: cascading delete.

  validates_presence_of :name, :name_normalized
  validates_uniqueness_of :name_normalized # name_normalized is the key.

  def before_validation_on_create
    self.name_normalized = name.downcase
  end

  # TODO: use http://svn.6brand.com/projects/plugins/immutable_attributes/
  #attr_immutable :name_normalized

  # accessor for actions other than the next action.
  def more_actions
    unless actions.empty?
      return actions - [next_action]
    else
      return []
    end
  end
end
