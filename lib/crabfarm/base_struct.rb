require 'crabfarm/base'
require 'crabfarm/assertion/context'

module Crabfarm
  class BaseStruct
    include Base
    include Assertion::Fields

    def initialize(_values={})
      reset_fields
      _values.each { |k,v| send("#{k}=", v) }
    end

    def as_json(_options=nil)
      field_hash
    end

    def to_json(_options={})
      field_hash.to_json(_options)
    end

  end
end
