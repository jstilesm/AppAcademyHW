class User < ApplicationRecord
    validates :username, :session_token, presence: true, uniqueness: true
    validates :password, length: {minimum: 6, allow_nil: true}
    validates :password_digest, presence: {message: 'Can''t be blank'}
    before_validation :ensure_session_token

    attr_reader :password

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        return user if BCrypt::Password.new(user.password_digest).is_password?(password) && user

    end

    def self.generate_session_token
        token = SecureRandom::urlsafe_base64(16)
        return token
    end

    def reset_session_token!
        self.session_token = User.generate_session_token
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= User.generate_session_token
    end

    def password=(arg)
        @password = arg
        self.password_digest = BCrypt::Password.create(arg)
    end
end
