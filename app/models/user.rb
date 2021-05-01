class User < ApplicationRecord
  devise devise :authy_authenticatable, :database_authenticatable, :registerable, :validatable, :recoverable, stretches: 13
end
