require File.dirname(__FILE__) + '/../lib/fucking_goddamn_new'

class Dog

  attr_accessor :name

  def initialize options={}
    options.each { |k,v| instance_variable_set("@#{k}", v) }
  end

end

describe 'Swearing at code' do

  it 'should feel good!' do
    rover = Dog.new :name => 'rover'
    rover.name.should == 'rover'

    fido = Dog.fucking.goddamn.new :name => 'fido'
    fido.name.should == 'fido'
  end

end
