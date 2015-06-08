require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  test "unique_tag" do
    quote = Quote.create(:author => 'Marcus Aurelius', :saying => 'The impediment to action advances action. What stands in the way becomes the way.')
    expected = 'MA#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end

end
