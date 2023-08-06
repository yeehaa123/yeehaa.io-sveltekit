<script>
	export let content;
	export let title;
	import SectionWrapper from './SectionWrapper.svelte';
</script>

<SectionWrapper --color="var(--curtains)" --background-color="var(--sun)">
	<div class="content" data-section-type={title}>
		<svelte:component this={content} {title} />
	</div>
</SectionWrapper>

<style>
	@import 'open-props/media';

	div {
		max-inline-size: 900px;
		margin-inline: auto;
		display: grid;
		grid-template-columns: repeat(4, 1fr);
	}

	[data-section-type='Proposition'] :global(> p:first-of-type),
	[data-section-type='Proposition'] :global(> p:nth-of-type(2)) {
		grid-column: span 4;
		margin-block: var(--size-7);
		text-align: center;
		font-size: var(--font-size-5);
		font-weight: var(--font-weight-9);
	}

	[data-section-type='Proposition'] :global(> p:nth-of-type(3)) {
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		grid-column-gap: 0px;
		grid-row-gap: 0px;
	}

	[data-section-type='Proposition'] :global(> p:nth-of-type(2)::after) {
		display: block;
		content: '..';
		line-height: 0.5;
		font-size: var(--font-size-8);
		margin-block-end: var(--size-9);
		letter-spacing: var(--font-letterspacing-4);
	}

	[data-section-type='Proposition'] :global(em) {
		font-style: normal;
	}

	[data-section-type='Proposition'] :global(a) {
		color: var(--purp);
	}
</style>
