require 'pacecar/associations'
require 'pacecar/boolean'
require 'pacecar/datetime'
require 'pacecar/duration'
require 'pacecar/except'
require 'pacecar/helpers'
require 'pacecar/limit'
require 'pacecar/order'
require 'pacecar/polymorph'
require 'pacecar/presence'
require 'pacecar/ranking'
require 'pacecar/search'
require 'pacecar/state'
require 'pacecar/where'

module Pacecar
  def self.included(base)
    base.class_eval do
      include Pacecar::Associations
      include Pacecar::Boolean
      include Pacecar::Datetime
      include Pacecar::Duration
      include Pacecar::Except
      include Pacecar::Limit
      include Pacecar::Order
      include Pacecar::Polymorph
      include Pacecar::Presence
      include Pacecar::Ranking
      include Pacecar::Search
      include Pacecar::State
      include Pacecar::Where
    end
  end
end

ActiveRecord::Base.send :include, Pacecar::Helpers
