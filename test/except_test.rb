require File.join(File.dirname(__FILE__), 'test_helper')

class ExceptTest < Test::Unit::TestCase

  context "A class which has included Pacecar" do
    setup do
      @args = 1, '3', 5..7, [10, %w(12 13)], 14...16
      @ids = 1, 3, 5, 6, 7, 10, 12, 13, 14, 15
    end
    context "with except method" do
      should "set the correct proxy options for an except column method" do
        assert User.respond_to?(:except)
        proxy_options = {:conditions => ['"users".id NOT IN (?)', @ids] }
        assert_equal proxy_options, User.except(@args).proxy_options
      end

      should "set set empty proxy options for an except column method without ids" do
        assert User.respond_to?(:except)
        proxy_options = {}
        assert_equal proxy_options, User.except.proxy_options
      end

      should "set the correct proxy options for an owner_ids_except column method" do
        assert Post.respond_to?(:owner_ids_except)
        proxy_options = {:conditions => ['"posts".owner_id NOT IN (?)', @ids] }
        assert_equal proxy_options, Post.owner_ids_except(@args).proxy_options
      end
    end
  end

end
