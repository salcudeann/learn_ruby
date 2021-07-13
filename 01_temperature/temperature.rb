def ftoc(val)
  val = val-32
  5.0*val/9.0

=begin
  if val==32
    0
  else
    5.0*(val-32)/9.0
  end
=end
end

def ctof(val)
  if val == 0
    32
  else
    9.0*val/5.0 + 32
  end
end
