package main

import (
	"fmt"
	"image"
	"image/color"
	"image/png"
	"os"
	"runtime"
)

func ReadPng(filename string) (image.Image, error) {
	file, err := os.Open(filename)
	if err != nil {
		return nil, err
	}
	defer file.Close()
	return png.Decode(file)
}

func OutputPng(img image.Image, filename string) error {
	file, err := os.Create(filename)
	if err != nil {
		return err
	}
	defer file.Close()
	return png.Encode(file, img)
}

func getXOffset(img image.Image) (i int) {
	black := color.RGBA{0, 0, 0, 255}
	for i = 0; i < img.Bounds().Max.X; i++ {
		if img.At(i, 2) != black {
			return i
		}
	}
	return 0
}

func getYOffset(img image.Image) (i int) {
	black := color.RGBA{0, 0, 0, 255}
	for i = 0; i < img.Bounds().Max.Y; i++ {
		if img.At(2, i) != black {
			return i
		}
	}
	return 0
}

func GetGameRect(img image.Image) image.Rectangle {
	r := img.Bounds()
	w := r.Max.X
	h := r.Max.Y
	x := 0
	y := 0

	if w > h*3/2 {
		w = h * 3 / 2
		x = getXOffset(img)
	} else {
		h = w * 2 / 3
		y = getYOffset(img)
	}
	return image.Rect(x, y, w+x, h+y)
}

func IsFileExists(name string) bool {
	_, err := os.Stat(name)
	return err == nil
}

func ReadImages(images chan<- *image.RGBA) {
	for i := 1; ; i++ {
		fname := fmt.Sprintf("album/%03d.png", i)
		if !IsFileExists(fname) {
			break
		}
		img, err := ReadPng(fname)
		if err != nil {
			fmt.Println(err)
			break
		}
		images <- img.(*image.RGBA).SubImage(GetGameRect(img)).(*image.RGBA)
	}
	close(images)
}

func SliceIcon(input <-chan *image.RGBA, output chan<- image.Image) {
	for img := range input {
		r := img.Bounds()
		w := r.Max.X - r.Min.X
		h := r.Max.Y - r.Min.Y

		irect := image.Rect(0, 0, w*210/1620, w*210/1620).Add(r.Min)

		col := []int{
			w * 131 / 1620, w * 356 / 1620, w * 580 / 1620,
			w * 805 / 1620, w * 1029 / 1620, w * 1254 / 1620,
		}
		row := []int{
			h * 76 / 1080, h * 286 / 1080, h * 497 / 1080,
		}

		for _, x := range col {
			for _, y := range row {
				output <- img.SubImage(irect.Add(image.Pt(x, y)))
			}
		}
	}
	close(output)
}

func WriteImages(img <-chan image.Image, fin chan<- bool) {
	n := 1
	for i := range img {
		outname := fmt.Sprintf("icon/%04d.png", n)
		n++
		if IsFileExists(outname) {
			continue
		}
		err := OutputPng(i, outname)
		if err != nil {
			fmt.Println(err)
		}
	}
	fin <- true
}

func main() {
	cpus := runtime.NumCPU()
	runtime.GOMAXPROCS(cpus * 2)

	inimg := make(chan *image.RGBA)
	outimg := make(chan image.Image)
	fin := make(chan bool)

	go ReadImages(inimg)
	go SliceIcon(inimg, outimg)
	go WriteImages(outimg, fin)
	<-fin
}
