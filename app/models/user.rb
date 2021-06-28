class User < ApplicationRecord
  acts_as_paranoid
  has_secure_password
  enum role: {member:1,admin:1}
end
