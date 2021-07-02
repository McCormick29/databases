log_file = open("um-server-01.txt") #opening file "um-server-01.txt" to run python on


def sales_reports(log_file): #creating a funtion called sales_reports with a paramater of log_file
    for line in log_file: #looping over each line in log_file
        line = line.rstrip() #creating an array out of the file lines
        day = line[0:3] #grabbing a specific index in line
        if day == "Tue": #finding tue in line
            print(line) #printing line if Tue is found


sales_reports(log_file) #running the function


# def sales_reports(log_file): 
#     for line in log_file: 
#         line = line.rstrip() 
#         day = line[0:3] 
#         if day == "Mon": 
#             print(line)

def melon_report(log_melon):
    for melon in melons:
        if melon = delivered:
            print('all melons delivered')
        elif melon = 1:
            print('Still delivering melons')
        else:
            print('all melons delivered')