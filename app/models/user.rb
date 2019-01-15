class User < ApplicationRecord
    has_secure_password
    has_many :records, dependent: :destroy
end
