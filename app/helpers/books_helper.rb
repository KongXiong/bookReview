module BooksHelper
	def form_image_select(book)
		return image_tag book.book_img.url(:medium),
	               id: 'image-preview',
	               class: 'img-responsive' if book.book_img.exists?
	           	image_tag 'placeholder.jpg', id: 'image-preview', class: 'img-responsive'
	end
end
