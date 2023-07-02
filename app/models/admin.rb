class Admin < ApplicationRecord
  devise :database_authenticatable, :recoverable, :registerable
end
