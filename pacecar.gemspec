Gem::Specification.new do |s|
  s.name = 'pacecar'
  s.version = '1.1.5'
  s.date = %q{2009-04-17}
  s.email = 'mjankowski@thoughtbot.com'
  s.homepage = 'http://github.com/thoughtbot/pacecar'
  s.summary = 'Pacecar adds named_scope methods to ActiveRecord classes via database column introspection.'
  s.description = 'Generated scopes for ActiveRecord classes.'
  s.files = %w(
    .autotest
    .gitignore
    MIT-LICENSE
    README.rdoc
    Rakefile
    init.rb
    lib/pacecar.rb
    lib/pacecar/associations.rb
    lib/pacecar/boolean.rb
    lib/pacecar/datetime.rb
    lib/pacecar/duration.rb
    lib/pacecar/except.rb
    lib/pacecar/helpers.rb
    lib/pacecar/limit.rb
    lib/pacecar/order.rb
    lib/pacecar/polymorph.rb
    lib/pacecar/presence.rb
    lib/pacecar/ranking.rb
    lib/pacecar/search.rb
    lib/pacecar/state.rb
    lib/pacecar/where.rb
    pacecar.gemspec
    test/associations_test.rb
    test/boolean_test.rb
    test/datetime_test.rb
    test/duration_test.rb
    test/except_test.rb
    test/helpers_test.rb
    test/limit_test.rb
    test/models.rb
    test/order_test.rb
    test/polymorph_test.rb
    test/presence_test.rb
    test/ranking_test.rb
    test/search_test.rb
    test/state_test.rb
    test/test_helper.rb
    test/where_test.rb
  )
  s.authors = ['Matt Jankowski']
  s.extra_rdoc_files = ['README.rdoc']
  s.has_rdoc = true
end
