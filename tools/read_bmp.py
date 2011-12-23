import sys
from PIL import Image

image = Image.open(sys.argv[1])
pixels = image.load()

[w, h] = image.size
white = (255, 255, 255)

for i in range(0, w):
    for j in range(0, h):
        px = pixels[i, j]
        if px != white:
            print i, h-j

