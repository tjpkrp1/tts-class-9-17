
def hola (name)
  "Hello #{name}"
end

Rspec.describe  "#hola" do
it "greets a person with their name' do"
  expect(hola("Ryan")).to equ("Hello Ryan")

end