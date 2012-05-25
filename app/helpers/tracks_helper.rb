module TracksHelper
  def options_for_abilities(abilities)
    abilities.map do |ability|
      [ability.name, ability.id]
    end
  end
end
