import adapter from '@sveltejs/adapter-auto'
import { vitePreprocess } from '@sveltejs/kit/vite'
import { mdsvex } from 'mdsvex'
import {visit, SKIP} from 'unist-util-visit'
import {definitions} from 'mdast-util-definitions'
import section from "@hbsnow/rehype-sectionize"
import unwrapImages from 'remark-unwrap-images'



function transformer(ast) {
  visit(ast, 'link', visitor)

  function visitor(node) {
    const data = node.data || (node.data = {})
    const props = data.hProperties || (data.hProperties = {})
    const url = node.url

    node.url = url.replace(/\.md/, '');
    return
  }
}

function links() {
  return transformer
};
/** @type {import('mdsvex').MdsvexOptions} */
const mdsvexOptions = {
  remarkPlugins: [links, unwrapImages],
  rehypePlugins: [section],
	extensions: ['.md'],
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
