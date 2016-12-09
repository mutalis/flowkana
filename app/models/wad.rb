# weight adjustment model
class Wad < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :strain
end
