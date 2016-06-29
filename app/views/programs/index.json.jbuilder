json.array!(@programs) do |program|
  json.extract! program, :id, :nombre, :version, :plataforma, :arquitectura, :tipo
  json.url program_url(program, format: :json)
end
