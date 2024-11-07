lst=[".301",".101",".20",".1",".12",".654",".99",".31",".309"]
num_digits = max([len(number) for number in lst])
lst_ = [number[1:] + "0"*(num_digits - len(number)) for number in lst]

print(lst_)

# list=[802, 2, 24, 45, 66, 170, 75, 90]

# for i in list:
#     i_st=str(i)
#     print(len(i_st))
#     for j in list:
list=["101","10","12","1000","99","1","5","100"]
cluster = max(len(num) for num in list)
print(type(cluster))
print(cluster)


# prob 2

def radix(lst, digit_index=0):
    # Find the maximum length of the numbers to pad shorter numbers
    max_len = max(len(num) for num in lst)
    lst = [num.zfill(max_len) for num in lst]  # Pad numbers with leading zeros
    
    # Base case: if digit_index exceeds max length, return the list as-is
    if digit_index >= max_len:
        return lst
    
    # Create 10 buckets for each possible digit (0-9)
    cluster = [[] for _ in range(10)]
    
    # Place each number into the appropriate bucket
    for number in lst:
        index = int(number[-(digit_index + 1)])
        cluster[index].append(number)
    
    # Flatten the list and proceed with the next digit position
    sorted_list = []
    for bucket in cluster:
        sorted_list.extend(bucket)
    
    # Recursive call to sort by the next digit position
    return radix(sorted_list, digit_index + 1)

# Original data list
data21 = ["101","10","12","1000","99","1","5","100"]

# Sort and print the result
sorted_data = radix(data21)
# Remove leading zeros from the final sorted list for a cleaner output
sorted_data = [str(int(num)) for num in sorted_data]
print(sorted_data)


def radix_decimal (lst):
    if lst:
        cluster = [[] for _ in range(10)]
        num_digits = max([len(number) for number in lst])
        lst_ = [number[1:] + "0"*(num_digits - len(number)) for number in lst]
        return ["." + number.strip('0') for number in radix(lst_)]
    else:
        return []