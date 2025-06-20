class CtsItem < ApplicationRecord
  has_one_attached :image

  validate :validate_json_data_presence

  private

  def validate_json_data_presence
    td = parse_json_field(technical_data)
    oi = parse_json_field(ordering_information)
    cd = parse_json_field(connection_data)
    dim = parse_json_field(dimensions)

    if td.blank?
      errors.add(:technical_data, "must have at least one key-value pair")
    end

    if oi.blank?
      errors.add(:ordering_information, "must have at least one item")
    end

    if cd.blank?
      errors.add(:connection_data, "must have at least one key-value pair")
    end

    if dim.blank?
      errors.add(:dimensions, "must have at least one key-value pair")
    end
  end

  def parse_json_field(field)
    if field.is_a?(String)
      begin
        JSON.parse(field)
      rescue JSON::ParserError
        {}
      end
    else
      field || {}
    end
  end
end
