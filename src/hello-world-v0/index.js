exports.handler = (event = {}, ctx = {}) => {
	console.log("--------------------------------------------------------")
	console.log("STARTING -----------------------------------------------")
	console.log(JSON.stringify(ctx, null, 4))
	console.log(JSON.stringify(event, null, 4))
	console.log("ENDING -------------------------------------------------")
	console.log("--------------------------------------------------------")

	return 'Hello world!'
}
