print('rejpg BY R-YaTian')
try:
    from PIL import Image
    Im = Image.open('./control/icon_AmericanEnglish.dat')
    try:
        dpi_tmp = Im.info.get('dpi')
    except:
        dpi_tmp = None
    if dpi_tmp is not None:
        Im.save('./control/icon_AmericanEnglish.dat', 'jpeg', quality = 100, subsampling = -1, dpi = dpi_tmp)
    else:
        Im.save('./control/icon_AmericanEnglish.dat', 'jpeg', quality = 100, subsampling = -1)

except:
    print('Error: Could not import Pillow or cannot open/save image file.')
    pass
