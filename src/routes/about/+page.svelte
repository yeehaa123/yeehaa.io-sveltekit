<script>
	import Quote from '$lib/components/Quote.svelte';
	import Section from '$lib/components/Section.svelte';
	export let data;

	const c = {
		Problem: Quote
	};

	const styles = {
		Problem: { color: 'white', background: 'fire' }
	};

	export const components = data.contents.map((d) => {
		return {
			...d,
			component: c[d.title] || Section,
			...(styles[d.title] || { color: 'curtains', background: 'white' })
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
