module Bmg
  module Algebra

    def allbut(butlist = [])
      type = self.type.allbut(butlist)
      Operator::Allbut.new(type, self, butlist)
    end

    def autowrap(options = {})
      type = self.type.autowrap(options)
      Operator::Autowrap.new(type, self, options)
    end

    def autosummarize(by = [], summarization = {})
      type = self.type.autosummarize(by, summarization)
      Operator::Autosummarize.new(type, self, by, summarization)
    end

    def constants(cs = {})
      type = self.type.constants(cs)
      Operator::Constants.new(type, self, cs)
    end

    def extend(extension = {})
      type = self.type.extend(extension)
      Operator::Extend.new(type, self, extension)
    end

    def image(right, as = :image, on = [], options = {})
      type = self.type.image(right, as, on, options)
      Operator::Image.new(type, self, right, as, on, options)
    end

    def project(attrlist = [])
      type = self.type.project(attrlist)
      Operator::Project.new(type, self, attrlist)
    end

    def rename(renaming = {})
      type = self.type.rename(renaming)
      Operator::Rename.new(type, self, renaming)
    end

    def restrict(predicate)
      type = self.type.restrict(predicate)
      Operator::Restrict.new(type, self, Predicate.coerce(predicate))
    end

    def union(other)
      type = self.type.union(other.type)
      Operator::Union.new(type, self, other)
    end

  end # module Algebra
end # module Bmg