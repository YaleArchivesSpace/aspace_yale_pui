Resource.class_eval do

  def opac_id
    json.dig('user_defined', 'string_2')
  end

  def ead_id
    json.dig('ead_id')
  end

end
