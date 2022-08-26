# frozen_literal_string: true

require 'rspec'
require './lib/01_caesar_cipher'

RSpec.describe 'Caesar Cipher' do
  describe 'encryption using #caesar_cipher' do
    it 'returns an encrypted message with lowercase' do
      expect(caesar_cipher('conquered', 5)).to eql('htsvzjwji')
    end

    it 'returns an encrypted message with lowercase and uppercase mixed' do
      expect(caesar_cipher('tRasHtastE', 3)).to eql('wUdvKwdvwH')
    end

    it 'returns an encrypted message with spaces' do
      expect(caesar_cipher('trash taste', 3)).to eql('wudvk wdvwh')
    end

    it 'returns an encrypted message with non alphabets characters' do
      expect(caesar_cipher('1r0nM0u53', 3)).to eql('1u0qP0x53')
    end

    it 'returns an encrypted message with loop characters' do
      expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end
  end
end
