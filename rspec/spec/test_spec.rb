require_relative '../hello'

RSpec.describe 'HelloWorld' do 
   context 'When testing the Hello World script' do 
      
      it "The say_hello method should return 'Hello World'" do 
         message = say_hello 
         expect(message).to eq "Hello World!" 
      end
      
   end 
end
