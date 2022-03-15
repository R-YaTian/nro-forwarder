print('rejpg BY R-YaTian')
try:
    from PIL import Image
    Im = Image.open('./control/icon_AmericanEnglish.dat')
    Im.save('./control/icon_AmericanEnglish.dat', 'jpeg', quality = 100, subsampling = -1, dpi = Im.info.get('dpi'), icc_profile=Im.info.get('icc_profile'))

except:
    print('Error: Could not import Pillow or cannot open/save image file.')
    pass
