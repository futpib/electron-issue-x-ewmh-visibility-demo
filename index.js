
const { app, BrowserWindow } = require('electron');

app.on('ready', () => {
	const win = new BrowserWindow({width: 800, height: 600});
	win.loadFile('index.html');
});