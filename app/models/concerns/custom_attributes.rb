module CustomAttributes
  extend ActiveSupport::Concern

  included do
    CustomerAttribute.where(name_model: self.name).each do |attr|
      attribute attr.attribute_name.to_sym, attr.attribute_type.to_sym
    end
  end
end