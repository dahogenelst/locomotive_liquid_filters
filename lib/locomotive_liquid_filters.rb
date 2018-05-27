require 'locomotive_liquid_filters/date'
require 'locomotive_liquid_filters/text'
Liquid::Template.register_filter(LocomotiveLiquidFilters::Date)
Liquid::Template.register_filter(LocomotiveLiquidFilters::Text)
