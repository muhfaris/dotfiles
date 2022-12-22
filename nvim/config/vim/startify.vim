let g:startify_lists = [
     \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
     \ ]

let g:startify_custom_header =
     \ startify#fortune#cowsay('', '═','║','╔','╗','╝','╚')

let g:startify_bookmarks = [ {'sicepat-pricelist': '$GOPATH/src/gitlab.sicepat.tech/operation/pricelist-svc'}, {'sicepat-joblst':'$GOPATH/src/gitlab.sicepat.tech/core/joblst' }, {'sicepat-sikube-st':'$GOPATH/src/gitlab.sicepat.tech/kube-config/sicepat/staging' }, {'faris-sicepat':'$GOPATH/src/gitlab.sicepat.tech/muhfaris/sicepat' }]
