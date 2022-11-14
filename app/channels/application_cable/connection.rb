module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def Connection
      self.current_user = 1
    end

    private

    def find_verified_user
      ActionDispatch::Request.new(connection.env).remote_ip
    end

  end
end
