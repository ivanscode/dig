import os

# Get list of celebrities
with open('celeb_list.txt') as f:
    lines = f.readlines()
celebs = [x[:-3] for x in lines]

# Match file naming
for n in range(len(celebs)):
    celebs[n] = celebs[n].replace(' ', '_')

# Iterate through files and match
matches = 0
for f in os.listdir('id'):
    if f in celebs:
        matches += 1
        ind = celebs.index(f) + 1
        print(f)
        os.rename('id/' + f, 'id/' + str(ind))
print('Matched {} folders'.format(matches))


