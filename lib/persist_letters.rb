class PersistLetters
  def execute(number)
    PopulateLetters.new(3).execute do |letter|
      Letter.create!(name: letter, description: <<EOF, score: Random.rand(1001))
        # This is the description for the letter #{letter}.
        # EOF)
    end
  end
end