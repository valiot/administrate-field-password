require 'administrate/field/password'

describe Administrate::Field::Password do
  describe '#to_partial_path' do
    it 'returns a partial based on the page being rendered' do
      page = :show
      field = Administrate::Field::Password.new(:password, '3lkajsd', page)

      path = field.to_partial_path

      expect(path).to eq("/fields/password/#{page}")
    end
  end
end
