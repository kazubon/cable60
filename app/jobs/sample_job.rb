class SampleJob < ApplicationJob
  queue_as :default

  def perform(cable_code)
    20.times do |idx|
      sleep 0.2
      ActionCable.server.broadcast(cable_code,
        type: 'sample', progress: (idx + 1) * (100 / 20), processing: true)
    end
    ActionCable.server.broadcast(cable_code,
      type: 'sample', progress: 100, processing: false)
  end
end
