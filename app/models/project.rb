class Project < ApplicationRecord
  belongs_to :user, inverse_of: :projects
  belongs_to :manager, class_name: 'User', optional: true
end
