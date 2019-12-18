class Click < ApplicationRecord

  include RailsAdminCharts

	belongs_to :advertisement

  def self.graph_data since=7.days.ago
    [
      {
          name: 'Payment',
          pointInterval: point_interval = 1.day * 1000,
          pointStart: start_point = since.to_i * 1000,
          data: self.total_records_since(since)
      },
    ]
  end

end
