<script>
	import Tagline from '$lib/components/Tagline.svelte';
	import Section from '$lib/components/Section.svelte';
	import Quote from '$lib/components/Quote.svelte';
	import Proposition from '$lib/components/Proposition.svelte';
	export let data;

	const c = {
		Tagline: Tagline,
		Proposition: Proposition,
		'Problem Statement': Quote,
		Principles: Section,
		Cases: Section,
		'Call To Action': Section
	};

	const styles = {
		Tagline: { color: 'white', background: 'curtains' },
		Proposition: { color: 'curtains', background: 'sun' },
		'Problem Statement': { color: 'white', background: 'fire' },
		Principles: { color: 'white', background: 'purp' },
		Cases: { color: 'curtains', background: 'sun' },
		'Call To Action': { color: 'curtains', background: 'sun' }
	};

	export const components = data.contents.map((d) => {
		const { title } = d;
		return {
			...d,
			component: c[title] || Section,
			...(styles[title] || { color: 'white', background: 'curtains' })
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
