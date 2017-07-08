class Enterprise

  def initialize
    @reactor     =     Reactor.new(self)
    @transporter = Transporter.new(self)
    @cupboard    =    Cupboard.new
    @pantry      =      Pantry.new
    @replicator  =  Replicator.new(self)
  end

  def reactor
    @reactor
  end

  def transporter
    @transporter
  end

  def cupboard
    @cupboard
  end

  def pantry
    @pantry
  end

  def replicator
    @replicator
  end

end
