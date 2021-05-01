class User < ApplicationRecord
  devise devise :authy_authenticatable, :database_authenticatable, :registerable, :recoverable, stretches: 13
end
