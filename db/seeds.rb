def load_seeds(file_basename)
  YAML.load(File.read(Rails.root.join("lib/seeds/#{file_basename}.yml")))
end

Medium.delete_all
media = load_seeds(:media)

media["Media"].each { |medium| Medium.create!(name: medium) }
