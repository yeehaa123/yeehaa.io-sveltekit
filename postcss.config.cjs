const postcssJitProps = require('postcss-jit-props');
const openProps = require('open-props');
const postcssCustomMedia = require('postcss-custom-media');

const config = {
	plugins: [
		postcssJitProps(openProps),
    postcssCustomMedia()
	]
};

module.exports = config;
