import os
import sys
import logging
import gdown
from zipfile import ZipFile

bag_url = 'https://drive.google.com/a/g2.nctu.edu.tw/uc?id=1lC9G7N2ui7i0VYnu9GKS9ixUTAxb6ROU&export=download'
bag_name = 'lab5_bag'
if not os.path.isdir(bag_name):
    gdown.download(bag_url, output=bag_name + '.bag', quiet=False)
    # zip1 = ZipFile(models_name + '.zip')
    # zip1.extractall(models_name)
    # zip1.close()

print("Finished downloading bag.") 