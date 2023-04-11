// ./src/hello-world-v0/index.js
exports.handler = async (event = {}, ctx = {}) => {
	console.log({ event })
	return { event }
}
