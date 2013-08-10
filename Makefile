minify: min

min:
	# go go gadget 'stupid simple minifcation that doesn't support comment'
	@cat vim.js| sed -e ':a' -e 'N' -e '$!ba' -e 's/\n//g' -e 's/\t//g' -e 's/  //g' > vim.min.js
