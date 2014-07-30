require_relative "flush"

class StraightFlush < Flush
  def valid?
    super && straight?
  end

  def to_s
    "Straight flush"
  end
end
