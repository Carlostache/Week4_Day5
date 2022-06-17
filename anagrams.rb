def first_anagram?(str1, str2) #O(n!)
  all_anagrams = str1.chars.permutation.to_a

  all_anagrams.include?(str2.chars)
end

# p first_anagram?("gizmo", "sally")
# p first_anagram?("elvis", "lives")


def second_anagram?(str1, str2) # O(n^2)
  indices = str2.chars # O(n)

  str1.each_char do |char| # O(n)
    found = indices.find_index(char) # O(n)
    if found != nil
    indices.delete(indices[found])
    end
  end

  return true if indices.empty?
  false
end

# p second_anagram?("gizmo", "sally")
# p second_anagram?("elvis", "lives")

def third_anagram?(str1, str2) #2nlogn + 2n ===> nlogn

  str1.chars.sort == str2.chars.sort

end


# p third_anagram?("gizmo", "sally")
# p third_anagram?("elvis", "lives")

def fourth_anagram?(str1, str2) #O(2n) ===> O(n)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.each_char do |char|
    hash1[char] += 1
  end
  str2.each_char do |char|
    hash2[char] += 1
  end
  hash1 == hash2
end


def bonus_anagram?(str1, str2) # O(3n) ===> O(n)
  hash = Hash.new(0)

  str1.each_char do |char|
    hash[char] +=1
  end

  str2.each_char do |char|
    hash[char] -= 1
  end

  hash.all? { |k, v| v == 0 }

end

p bonus_anagram?("gizmo", "sally")
p bonus_anagram?("elvis", "lives")

