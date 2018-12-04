document.addEventListener('visibilitychange', () => {
	const msg = JSON.stringify({
		hidden: document.hidden,
		visibilityState: document.visibilityState,
	}, null, 2);

	console.log(msg);
	const notification = new Notification(msg);
});
