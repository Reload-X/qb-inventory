fx_version 'cerulean'
game 'gta5'

description 'qb-inventory'
version '1.0.2'

shared_scripts {
	'shared/config.lua',
	'shared/vehicles.lua',
	'shared/filter.lua',
	'shared/bin.lua',
	'shared/vending.lua',
	'shared/lang.lua',
	'@qb-weapons/config.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua',
}

client_scripts {
	'client/main.lua',
}


ui_page {
	'html/ui.html'
}

files {
	'html/ui.html',
	'html/css/main.css',
	'html/js/app.js',
	'html/images/*.svg',
	'html/images/*.png',
	'html/images/*.jpg',
	'html/inventory_images/*.png',
	'html/ammo_images/*.png',
	'html/attachment_images/*.png',
	'html/*.ttf'
}

lua54 'yes'
