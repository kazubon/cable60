class UserChannel < ApplicationCable::Channel
  def subscribed
    stream_from cable_code if cable_code
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
