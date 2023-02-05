#email: string
# password_digest: string
#has_secure_password also add some virtual attribute
#
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "please enter a valid email address" }
end
