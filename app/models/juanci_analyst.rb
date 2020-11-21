class JuanciAnalyst < PancakeAnalyst
  def liked_country?(country)
    country.name.downcase != 'argentina'
  end
end
