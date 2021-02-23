# frozen_string_literal: true


module Cep::BatchService
  BATCH_SIZE = 5.freeze

  def split(ceps)
    ceps.each_slice(BATCH_SIZE).to_a
  end

  module_function :split
end
