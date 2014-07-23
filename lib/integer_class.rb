require 'Prime'

class Integer
  def factors

    a = (2..self).to_a
    a.keep_if { |x| self%x == 0 && x != self }

    # factors= []
    # 2.upto(self) do |i|
    #   if self%i == 0
    #     if i != 1
    #       factors << i
    #     end
    #   end
    # end
    # factors
  end

  def prime_factors
    self.factors.keep_if { |x| Prime.instance.prime?(x) }
  end
end