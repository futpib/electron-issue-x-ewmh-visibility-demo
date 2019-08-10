console.log('asdf');

document.addEventListener('visibilitychange', () => {
	const msg = JSON.stringify({
		hidden: document.hidden,
		visibilityState: document.visibilityState,
	}, null, 2);

	console.log('visibilitychange ' + msg);
	const notification = new Notification(msg);
});
