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
    raise Exception, "Not Implemented"
end

def nthmax(n, a)
    raise Exception, "Not Implemented"
end

def freq(s)
    raise Exception, "Not Implemented"
end

def zipHash(arr1, arr2)
    raise Exception, "Not Implemented"
end

def hashToArray(hash)
    raise Exception, "Not Implemented"
end
