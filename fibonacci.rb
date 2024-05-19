# implementation using itteriation
def fibs(num)
  return [] if num < 1

  return [0] if num == 1

  return [0, 1] if num == 2

  arr = [0, 1]
  (num - 2).times do
    arr.append(arr[-2] + arr[-1])
  end
  arr
end
