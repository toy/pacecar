module Pacecar
  module Except
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def self.extended(base)
        base.send :define_except_scopes
      end

    protected

      def except_scope_conditions(column, *args)
        ids = args.flatten.inject([]) do |ids, arg|
          case arg
          when Numeric
            ids << arg
          when String
            ids << arg.to_i
          when ActiveRecord::Base
            ids << arg.id
          else
            ids + arg.to_a
          end
        end.uniq

        ids.empty? ? {} : {:conditions => ["#{column} NOT IN (?)", ids]}
      end

      def define_except_scopes
        if column_names.include?('id')
          named_scope :except, proc{ |*args|
            except_scope_conditions("#{quoted_table_name}.id", *args)
          }
        end
        column_names.grep(/^.+_id$/).each do |name|
          named_scope "#{name}s_except".to_sym, proc{ |*args|
            except_scope_conditions("#{quoted_table_name}.#{name}", *args)
          }
        end
      end

    end
  end
end
