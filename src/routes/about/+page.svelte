<script>
	import Section from '$lib/components/Section.svelte';
	import Proposition from '$lib/components/Proposition.svelte';
	export let data;

	export const components = data.contents.map((d) => {
		if (d.title === 'Proposition') {
			return { ...d, component: Proposition };
		} else {
			return { ...d, component: Section };
		}
	});
</script>

<article>
	{#each components as content}
		<svelte:component this={content.component} title={content.title} content={content.content} />
	{/each}
</article>
