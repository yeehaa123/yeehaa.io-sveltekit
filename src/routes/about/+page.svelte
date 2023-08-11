<script>
	import Quote from '$lib/components/Quote.svelte';
	import Section from '$lib/components/Section.svelte';
	import CTA from '$lib/components/CTA.svelte';
	export let data;

	const c = {};

	const styles = {};
	export const components = data.contents.map((d) => {
		return {
			...d,
			component: c[d.title] || Section,
			...(styles[d.title] || { color: 'sun', background: 'curtains' })
		};
	});
</script>

<article>
	{#each components as content}
		<svelte:component
			this={content.component}
			title={content.title}
			content={content.content}
			color={content.color}
			background={content.background}
		/>
	{/each}
</article>
