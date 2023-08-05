import adapter from '@sveltejs/adapter-auto'
import { vitePreprocess } from '@sveltejs/kit/vite'
import remarkParse from 'remark-parse';
import remarkDirective from 'remark-directive';
import frontmatter from "remark-frontmatter"
import parseFrontmatter from "remark-parse-frontmatter"
import { mdsvex } from 'mdsvex'
import { visit } from 'unist-util-visit';
import { h } from 'hastscript';

function myRemarkPlugin() {
	return (tree) => {
		visit(tree, (node) => {
			if (
				node.type === 'textDirective' ||
				node.type === 'leafDirective' ||
				node.type === 'containerDirective'
			) {
				if (node.name !== 'note') return;

				const data = node.data || (node.data = {});
				const tagName = node.type === 'textDirective' ? 'span' : 'div';

				data.hName = tagName;
				data.hProperties = h(tagName, node.attributes).properties;
			}
		});
	};
}

/** @type {import('mdsvex').MdsvexOptions} */
const mdsvexOptions = {
	extensions: ['.md'],
  remarkPlugins: [remarkParse, frontmatter, parseFrontmatter, remarkDirective, myRemarkPlugin]
}

/** @type {import('@sveltejs/kit').Config} */
const config = {
	extensions: ['.svelte', '.md'],
	preprocess: [vitePreprocess(), mdsvex(mdsvexOptions)],
	kit: {
		adapter: adapter()
	}
}

export default config
