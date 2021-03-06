# frozen_string_literal: true
class Zendesk2::DestroyCategory
  include Zendesk2::Request

  request_method :delete
  request_path { |r| "/categories/#{r.category_id}.json" }

  def category_id
    params.fetch('category').fetch('id')
  end

  def mock
    delete!(:categories, category_id)

    mock_response(nil)
  end
end
