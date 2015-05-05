def create_character(first_name:, last_name:, klass:, hitpoints:, weapon:)
  return {first_name:first_name, last_name:last_name, klass:klass, hitpoints:hitpoints, weapon:weapon}
end

def describe_character(character:)
  if character[:hitpoints] >= 100
    health = "quite healthy"
  elsif character[:hitpoints] < 100
    health = "lightly wounded"
  elsif character[:hitpoints] < 75
    health = "moderately wounded"
  elsif character[:hitpoints] < 50
    health = "badly wounded"
  elsif character[:hitpoints] < 25
    health = "close to death"
  elsif character[:hitpoints] <= 0
    return "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} is dead.\n Beside the corpse lies a #{character[:weapon]}"
  end
  return "#{character[:first_name]} #{character[:last_name]} the #{character[:klass]} wields a #{character[:weapon]}\n #{character[:first_name]} appears #{health}"
end

def hit_character(character: ,damage:)
  character[:hitpoints] -= damage
  return character
end