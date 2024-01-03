install.packages("hexSticker")

require(hexSticker)

imgurl <- "C:\\Users\\c.silva\\Documents\\silvalab\\images\\logo\\logo_hex.png"
sticker(imgurl, package="", p_size=12, s_x=1.11, s_y=1, s_width=1.3,h_fill ="black",h_color="gray",
        white_around_sticker=TRUE,
        filename="C:\\Users\\c.silva\\Documents\\silvalab\\images\\logo\\logo_hex_clip.png")



library(magick)
p <- image_read("C:\\Users\\c.silva\\Documents\\silvalab\\images\\logo\\logo_hex_clip.png")
pp <- p %>%
  image_fill(color = "transparent", refcolor = "white", fuzz = 4, point = "+1+1") %>%
  image_fill(color = "transparent", refcolor = "white", fuzz = 4, point = "+517+1") %>%
  image_fill(color = "transparent", refcolor = "white", fuzz = 4, point = "+1+599") %>%
  image_fill(color = "transparent", refcolor = "white", fuzz = 4, point = "+517+599")
image_write(image = pp, path = "C:\\Users\\c.silva\\Documents\\silvalab\\images\\logo_hex_clip_trans.png")
file.show("C:\\Users\\c.silva\\Documents\\silvalab\\images\\logo_hex_clip_trans.png")



require(magick)
## list file names and read in
imgs <- list.files("C:\\Users\\c.silva\\Documents\\silvalab\\images\\logo\\logo_img", full.names = TRUE, pattern = "Slide")
img_list <- lapply(imgs, image_read)

## join the images together
img_joined <- image_join(img_list)

## animate at 2 frames per second
img_animated <- image_animate(img_joined, fps = 0.25)

## view animated image
#img_animated

## save to disk
image_write(image = img_animated,
            path = "C:\\Users\\c.silva\\Documents\\silvalab\\images\\logo_gif.gif")



####################
# Logo ICEsat-4D

imgurl <- "Y:\\01_Projects\\04_NASA_ICESat2\\02_figures\\icesat4d\\Slide1.PNG"
sticker(imgurl, package="", p_size=12, s_x=0.9, s_y=1, s_width=1.01,h_fill ="black",h_color="gray",h_size=0.7,
        white_around_sticker=TRUE,
        filename="Y:\\01_Projects\\04_NASA_ICESat2\\02_figures\\hex_icesat4d.png")



library(magick)
p <- image_read("Y:\\01_Projects\\04_NASA_ICESat2\\02_figures\\hex_icesat4d.png")
pp <- p %>%
  image_fill(color = "transparent", refcolor = "white", fuzz = 4, point = "+1+1") %>%
  image_fill(color = "transparent", refcolor = "white", fuzz = 4, point = "+517+1") %>%
  image_fill(color = "transparent", refcolor = "white", fuzz = 4, point = "+1+599") %>%
  image_fill(color = "transparent", refcolor = "white", fuzz = 4, point = "+517+599")
image_write(image = pp, path = "Y:\\01_Projects\\04_NASA_ICESat2\\02_figures\\hex_icesat4d_trans.png")
file.show("Y:\\01_Projects\\04_NASA_ICESat2\\02_figures\\hex_icesat4d_trans.png")
