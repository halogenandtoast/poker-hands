require_relative "flush"

class RoyalFlush < Flush
  def valid?
    super && royal?
  end

  def to_s
    "Royal flush"
  end
end
