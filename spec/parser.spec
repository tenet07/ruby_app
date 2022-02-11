require './bin/parser'

describe Parser do
    describe "#initialize" do
      it "should have [] urls" do
        expect(Parser.new.urls).to eq([])
      end
    end

end