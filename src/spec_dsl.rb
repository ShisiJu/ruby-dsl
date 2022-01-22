class Expect
  attr_reader :actual

  def initialize(_actual)
    @actual = _actual
  end

  def to(matcher)
    matcher.exec(actual)
  end
end

class Matcher
  attr_reader :name, :expect_val

  def initialize(_name, _expect)
    @name = _name
    @expect_val = _expect
  end

  def exec(actual)
    send(name, actual)
  end

  def eq(actual)
    puts "it shoud be true. #{actual == expect_val}"
  end
end

class UT
  def initialize; end

  def expect(actual)
    Expect.new(actual)
  end

  def eq(expect)
    Matcher.new(:eq, expect)
  end
end

content = 'expect(1 + 1).to eq 2'
ut = UT.new
ut.instance_eval(content)
