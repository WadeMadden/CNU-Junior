def process(after, input):
    number_of_pirates = ((len(input[0])-1)*len(input))/2
    place_in_line = number_of_pirates - after
    place_in_line = int(place_in_line)
    i = 0
    count = 0
    u = len(input)
    k = (len(input[0]))-1
    new_list = [[0 for _ in range(k)]for _ in range(u)]

    while (i<len(input)):
        j = 0
        while (j<len(input[i])-1):
            j += 1
            if j != 0:
                new_list[i][j-1] = (input[i][j])
                #print(new_list[i][j-1])
        i += 1

    p = 0
    while (p < number_of_pirates):
       if p == place_in_line-1:
           o = -1
           r = len(new_list)
           while (o < r ):
               o = o + 1
               if o < r:
                   if(new_list[o]==[] ):
                       del(new_list[o])
                       count +=1
                       r = len(new_list)
                       o = o - 1

           gem1Name = 'zzzzzzz'
           c = 0
           while (c < len(input)):
               b = -1
               while (b < len(input[0]) - 1):
                   b += 1
                   if input[c][b] == max(max(new_list)) and b < len(input[0]):
                       temp = input[c+count][0]
                       if temp < gem1Name:
                           gem1Name = temp
               c += 1

           gem2Name = '@'

           '''c = 0
           if max(max(new_list)) == min(min(new_list)):
               while(c < len(new_list)):
                   if input[c][0] == gem1Name:
                       del(new_list[c])
                       break
                   c += 1'''

           c = 0
           while(c < len(input)):
               b = -1
               while( b < len(input[0])-1):
                   b += 1
                   if input[c][b] == min(min(new_list)) and b < len(input[0]):
                       temp = input[c][0]
                       if(temp > gem2Name):
                           gem2Name = temp
               c += 1

           gem1Pos = new_list.index(max(new_list))
           gem2Pos = new_list.index(min(new_list))
           return '%s:%d %s:%d' % (gem1Name,max(max(new_list)),gem2Name, min(min(new_list)))
       else:
           gemMinName = '@'
           f = 0
           while (f < len(new_list)):
               g = -1
               while (g < len(new_list[f]) - 1):
                   g += 1
                   if new_list[f][g] == min(min(new_list)):
                       temp = input[f][0]
                       if (temp > gemMinName):
                           gemMinName = temp
               f += 1

           h = 0

           while (h < len(new_list)):
               minX = new_list[h]
               minYPos = minX.index(min(minX))
               if input[h][0] == gemMinName:
                   del(new_list[h][minYPos])
                   if(new_list[h]==[]):
                       del(new_list[h])
                   break
               h += 1

           gemMaxName = 'zzzzzzzz'
           f = 0
           while (f < len(new_list)):
               g = -1
               while (g < len(new_list[f]) - 1):
                   g += 1
                   if new_list[f][g] == max(max(new_list)):
                       temp = input[f][0]
                       if (temp < gemMaxName):
                           gemMaxName = temp
               f += 1

           h = 0

           while (h < len(new_list)):
               maxX = new_list[h]
               maxYPos = maxX.index(max(maxX))
               if input[h][0] == gemMaxName:
                   del (new_list[h][maxYPos])
                   if (new_list[h] == []):
                       del (new_list[h])
                   break
               h += 1
           '''maxX = max(new_list)
           minX = min(new_list)

           maxXPos = new_list.index(max(new_list))
           maxYPos = maxX.index(max(maxX))

           minXPos = new_list.index(min(new_list))
           minYPos = minX.index(min(minX))

           del(new_list[maxXPos][maxYPos])
           del(new_list[minXPos][minYPos])'''
       p = p + 1

