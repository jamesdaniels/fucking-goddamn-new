class Object

  %w( fucking fuck damn god damn goddamn bitch chickenfucker motherfucker ).each do |word|
    sym = word.to_sym
    define_method(sym) { self } unless respond_to?(sym)

    sym = "#{ word }!".to_sym
    define_method(sym) { self } unless respond_to?(sym)
  end

end
