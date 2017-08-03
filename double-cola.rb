# version 1
def whoIsNext names, r
  a = []
  a.replace names
  for i in 1..r do
    a.push(a[0], a[0]).shift
  end
  a.last
end
