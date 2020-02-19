class CpfCnpjValidator < ActiveModel::Validator
  require "cpf_cnpj"
  
  def validate(record)
    unless CPF.valid?(record.cpf_cnpj)
      record.errors[:base] << "CPF/CNPJ inválido!"
    end
  end
end