# frozen_string_literal: true

module Cep::SanitizeService
  def sanitize_set(ceps)
    ceps.map { |cep| sanitize(cep) }
  end

  def sanitize(cep)
    cep.gsub('-', '')
  end

  module_function :sanitize_set, :sanitize
end
