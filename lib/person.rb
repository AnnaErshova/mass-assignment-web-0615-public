class Person
  # attr_accessor :attributes, :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width
  def initialize(attributes={}) # initialize with a hash of attibuted
    attributes.each do |k,v|
      self.class.send(:define_method, k) do
        v
      end
    end
  end
end

# send takes as a first argument the method we want to call
# then further arguments get passed down to that method 
# :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width
=begin
  bob_attributes = {name: "Bob", age: 27, hair_color: "Brown"}

  bob = Person.new(bob_attributes)
  bob.name       # => "Bob"
  bob.age        # => 27
  bob.hair_color # => "Brown"

  susan_attributes = {name: "Susan", height: "5'11\"", eye_color: "Green"}

  susan = Person.new(susan_attributes)
  susan.name      # => "Susan"
  susan.height    # => "5'11""
  susan.eye_color # => "Green"
=end
