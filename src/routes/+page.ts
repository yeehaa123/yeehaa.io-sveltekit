import { json } from '@sveltejs/kit';
export const prerender = true;

async function getSections() {
	const sections = [];
	const paths = import.meta.glob('/src/content/Home/*.md', { eager: true });
	for (const path in paths) {
		const file = paths[path];
		const meta = file.metadata;
		sections.push({ content: file.default, ...meta });
	}
	return sections.sort((a, b) => a.order - b.order);
}

export async function load({ params }) {
	const sections = await getSections();
	return { contents: sections };
}
