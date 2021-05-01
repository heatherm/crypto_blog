class User < ApplicationRecord
  devise devise :database_authenticatable, :registerable, :recoverable, stretches: 13
end
