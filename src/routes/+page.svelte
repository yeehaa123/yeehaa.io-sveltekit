<script>
	import Tagline from '$lib/components/Tagline.svelte';
	import Section from '$lib/components/Section.svelte';
	import Quote from '$lib/components/Quote.svelte';
	import Proposition from '$lib/components/Proposition.svelte';
	export let data;

	const c = {
		Tagline: Quote,
		Proposition: Proposition,
		'Problem Statement': Quote
	};

	const styles = {
		Tagline: { color: 'white', background: 'curtains' },
		'Problem Statement': { color: 'white', background: 'fire' }
	};

	export const components = data.contents.map((d) => {
		return {
			...d,
			component: c[d.title] || Section,
			...(styles[d.title] || { color: 'white', background: 'curtains' })
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
