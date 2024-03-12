class PenTagRelation < ApplicationRecord
  belongs_to :pen
  belongs_to :tag
end
