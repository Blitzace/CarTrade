module CarsHelper
def options_for_association_conditions(association)
    if association.name == :brand
      {'brands.manufacturer_id' => @record.manufacturer_id}
    else
      super
    end
  end

end
