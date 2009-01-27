module Pacecar
  module Where
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def self.extended(base)
        base.send :define_where_scope
      end

      protected

      def define_where_scope
        named_scope :where, lambda { |*conditions|
          if conditions.size > 1
            { :conditions => conditions }
          else
            { :conditions => conditions.first }
          end
        }
      end

    end
  end
end
