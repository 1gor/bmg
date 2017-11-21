module Bmg
  class Relation
    include Enumerable

    def initialize(operand)
      @operand = operand
    end

    def each(&bl)
      @operand.each(&bl)
    end

    def autowrap(options = {})
      Relation.new Operator::Autowrap.new(@operand, options)
    end

    def rename(renaming = {})
      Relation.new Operator::Rename.new(@operand, renaming)
    end

  end # class Relation
end # module Bmg