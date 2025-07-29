Resource.class_eval do

  def opac_id
    # This setting allows us to control whether the Orbis/Voyager catalog link
    # appears on Resource records in the PUI.
    #
    # When set to false, the view partial will not render the link.
    # When set to true, it will use the value in user_defined.string_2.
    #
    # Configured in: config/config.rb -> AppConfig[:show_opac_link]
    return nil unless AppConfig[:show_opac_link]
    
    json.dig('user_defined', 'string_2')
  end

  def ead_id
    json.dig('ead_id')
  end

end
