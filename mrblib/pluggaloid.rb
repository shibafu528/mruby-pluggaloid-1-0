module Pluggaloid
  VM = Struct.new(*%i<Delayer Plugin Event Listener Filter>)

  def self.new(delayer)
    vm = VM.new(delayer,
                Class.new(Plugin),
                Class.new(Event),
                Class.new(Listener),
                Class.new(Filter))
    vm.Plugin.vm = vm.Event.vm = vm
  end
end
