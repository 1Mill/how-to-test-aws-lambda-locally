exports.handler = async (event = {}, ctx = {}) => {
	console.log({ event })
	return { event }
}
