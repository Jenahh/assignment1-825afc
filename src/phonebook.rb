class PhoneBook
    def initialize
        @name = {}
        @listed = {}
    end

    def add(name, number, is_listed)
        return false if @name.key?(name)
        return false unless number =~ /^\d{3}-\d{3}-\d{4}$/

        if is_listed
            return false if @listed.key?(number)
        end
        @name[name] = {number: number, listed: !!is_listed}
        @listed[number] = name if is_listed
        true
    end

    def lookup(name)
        rec = @name[name]
        return nil unless rec && rec[:listed]
        rec[:number]
    end

    def lookupByNum(number)
        @listed[number]
    end

    def namesByAc(areacode)
        @name.each_with_object([]) do |(name,rec), arr|
            arr << name if rec[:number].start_with?("#{areacode}-")
        end
    end
end