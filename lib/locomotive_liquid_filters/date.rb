require 'liquid'

module LocomotiveLiquidFilters
  module Date

    def end_of_year(input)
      return '' if input.blank?

      if input.respond_to? :end_of_year
        return input.end_of_year
      end

      if input.is_a?(String)
        Time.zone.parse(input).end_of_year rescue ''
      end
    end

    def beginning_of_year(input)
      return '' if input.blank?

      if input.respond_to? :beginning_of_year
        return input.beginning_of_year
      end

      if input.is_a?(String)
        Time.zone.parse(input).beginning_of_year rescue ''
      end
    end

    def end_of_month(input)
      return '' if input.blank?

      if input.respond_to? :end_of_month
        return input.end_of_month
      end

      if input.is_a?(String)
        Time.zone.parse(input).end_of_month rescue ''
      end
    end

    def beginning_of_month(input)
      return '' if input.blank?

      if input.respond_to? :beginning_of_month
        return input.beginning_of_month
      end

      if input.is_a?(String)
        Time.zone.parse(input).beginning_of_month rescue ''
      end
    end

    def end_of_week(input)
      return '' if input.blank?

      if input.respond_to? :end_of_week
        return input.end_of_week
      end

      if input.is_a?(String)
        Time.zone.parse(input).end_of_week rescue ''
      end
    end

    def beginning_of_week(input)
      return '' if input.blank?

      if input.respond_to? :beginning_of_week
        return input.beginning_of_week
      end

      if input.is_a?(String)
        Time.zone.parse(input).beginning_of_week rescue ''
      end
    end

    def end_of_day(input)
      return '' if input.blank?

      if input.respond_to? :end_of_day
        return input.end_of_day
      end

      if input.is_a?(String)
        Time.zone.parse(input).end_of_day rescue ''
      end
    end

    def beginning_of_day(input)
      return '' if input.blank?

      if input.respond_to? :beginning_of_day
        return input.beginning_of_day
      end

      if input.is_a?(String)
        Time.zone.parse(input).beginning_of_day rescue ''
      end
    end

    def adjust_date(input, adjustment, unit)
      return '' if input.blank?

      adjustment = adjustment.to_i
      unit = unit.to_sym

      if (adjustment.respond_to? unit)
        input + adjustment.send(unit)
      else
        input
      end
    end

  end
end
