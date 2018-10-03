class Expense < ApplicationRecord
  attribute :Status, :boolean, default: 'false'
end
