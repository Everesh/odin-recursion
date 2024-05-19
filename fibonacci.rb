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

# implementation using recursion
def fibs_rec(num, result = [0, 1])
  return [] if num < 1

  return [0] if num == 1

  return result[0...num] if num <= result.length

  result.push(result[-1] + result[-2])
  fibs_rec(num, result)
end
