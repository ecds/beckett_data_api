# frozen_string_literal: true

# spec/support/request_spec_helper
module RequestSpecHelper
  # Parse JSON response to ruby hash
  def json
    data = JSON.parse(response.body)
    if data.is_a? Array
      data.map(&:with_indifferent_access)
    else
      JSON.parse(response.body).with_indifferent_access
    end
  end

  def errors
    JSON.parse(response.body).with_indifferent_access[:errors].map { |e| e[:detail] }
  end
end
