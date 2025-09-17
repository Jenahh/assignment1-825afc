def fib(n)
    return [] if n == 0
    return [0] if n == 1
    seq = [0,1]
    (2...n).each do |i|
        seq << seq[i-1] + seq[i-2]
    end
    seq
end

def isPalindrome(n)
    s = n.to_s
    s == s.reverse
end

def nthmax(n, a)
    uniq_sorted = a.uniq.sort.reverse
    uniq_sorted[n]
end

def freq(s)
    return "" if s.empty?
    count = Hash.new(0)
    s.each_char {|ch| count[ch] +=1}
    count.max_by {|_,v| v}[0]
end

def zipHash(arr1, arr2)
    return nil unless arr1.length == arr2.length
    Hash[arr1.zip(arr2)]
end

def hashToArray(hash)
    hash.map {|k,v| [k,v]}
end
