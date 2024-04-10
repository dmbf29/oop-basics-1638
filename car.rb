# defining method
# def method
# end

# define a class
# Car -> cake mold -> class sets the rules for an instance

# Car.new -> creates an INSTANCE of a car
# .new triggers the .intialize
class Car
  attr_accessor :color # read and write
  # this gets run when we create a NEW instance (Car.new)
  # intialize will set the initial data you want to store
  def initialize(color)
    # @instance_variable
    @engine_started = false
    @color = color
  end

  # shorcut version
  # attr_reader CREATES a method that returns an instance variable of the same name
  # we wont create attr_reader for booleans
  # attr_reader :color
  # create a method to update the attribute
  # attr_writer :color

  # yoana.color = 'black'
  # attr_writer creates this
  # def color=(new_color)
  #   @color = new_color
  # end

  # INSTANCE method
  # def color
  #   # we have access to all instance variables inside of an instance method
  #   return @color
  # end

  def engine_started?
    return @engine_started
  end

  # changed a value w/o passing a parameter
  def start_engine!
    # inside of instance methods, you can call other instance methods as well
    spark_ignition
    pumps_fuel
    piston_pumping
    @engine_started = true
  end

  # everything below private cant be called outside of the class
  private

  def spark_ignition
    puts 'spark ignition'
  end

  def pumps_fuel
    puts 'pumps fuel'
  end

  def piston_pumping
    puts 'piston pumping'
  end
end
