class String

  def coin_change

    remainder = (self.to_f).floor
    if remainder > 99
      return 'enter a smaller amount'

    else
      until remainder == 0
        if remainder >= 25
          quarters = (remainder / 25).floor
          remainder = (remainder - 25 * quarters)

        elsif remainder >= 10
          dimes = (remainder / 10).floor
          remainder = (remainder - 10 * dimes)

        elsif remainder >= 5
          nickels = (remainder / 5).floor
          remainder = (remainder - 5 * nickels)

        else
          pennies = (remainder / 1).floor
          remainder = remainder - 1 * pennies
        end
      end
      "Your change is #{quarters.to_i.to_s} quarter(s), #{dimes.to_i.to_s} dime(s), #{nickels.to_i.to_s} nickel(s) and #{pennies.to_i.to_s} pennie(s)."
    end
  end
end
