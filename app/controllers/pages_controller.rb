class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
    # bar received :cat and {sat: :dat, dat: :sat}
    # Output: "catbazdat" under "Your result"
    # the bar method will take in two arguments/parameters (one is a hash)
  end

  def stringify
    stringify_instance = Stringify.new(
      params[:name],
      params[:adjective]
    )
    @text = stringify_instance.what_am_i
  end

  def age
  end

  def person
    @person = Person.new params[:name], params[:age]
  end

  def showme
  end
end
