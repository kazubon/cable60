module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :cable_code

    def connect
      if cookies.signed[:cable_code]
        self.cable_code = cookies.signed[:cable_code]
      end
    end
  end
end
