require 'test_helper'

class QuotesControllerTest < ActionController::TestCase

   test "quote show page" do
     quote = Quote.create(:author => 'Marcus Aurelius', :saying => 'The impediment to action advances action. What stands in the way becomes the way.')
     get :show, :id => quote.id
     assert_response :success
   end

   test "quote show page, not found" do
     get :show, :id => 'OMG'
     assert_response :not_found
   end

end
