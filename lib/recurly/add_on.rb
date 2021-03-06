module Recurly
  class AddOn < Resource
    # @return [Plan]
    belongs_to :plan

    define_attribute_methods %w(
      add_on_code
      name
      default_quantity
      unit_amount_in_cents
      display_quantity_on_hosted_page
      created_at
    )
    alias to_param add_on_code

    # Add-ons are only writeable and readable through {Plan} instances.
    embedded!
    private_class_method :find
  end
end
