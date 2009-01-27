require File.join(File.dirname(__FILE__), 'test_helper')

class WhereTest < Test::Unit::TestCase

  context "A class which has included Pacecar" do
    setup do
      @class = User
    end
    should "set the correct proxy options for where method when given a hash" do
      assert @class.respond_to?(:where)
      conditions = {:admin => true}
      proxy_options = { :conditions => conditions }
      assert_equal proxy_options, @class.where(:admin => true).proxy_options
    end

    should "set the correct proxy options for where method when given an array" do
      conditions = ['"users".admin = ?', true]
      proxy_options = { :conditions => conditions }
      assert_equal proxy_options, @class.where(conditions).proxy_options
    end

    should "set the correct proxy options for where method when given multiple arguments" do
      conditions = ['"users".admin = ?', true]
      proxy_options = { :conditions => conditions }
      assert_equal proxy_options, @class.where('"users".admin = ?', true).proxy_options
    end
  end

end
