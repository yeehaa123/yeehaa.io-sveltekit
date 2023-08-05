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

	section {
		background-color: var(--sun);
	}

	div {
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		grid-column-gap: 0px;
		grid-row-gap: 0px;
	}

	[data-section-type='Proposition'] :global(.principle) {
		grid-column: span 4;
	}

	[data-section-type='Proposition'] :global(p) {
		grid-column: span 4;
		margin-block: var(--size-7);
	}

	[data-section-type='Proposition'] :global(> p:first-of-type),
	[data-section-type='Proposition'] :global(> p:nth-of-type(2)) {
		max-inline-size: 900px;
		margin-inline: auto;
		text-align: center;
		font-size: var(--font-size-5);
		font-weight: var(--font-weight-9);
	}

	[data-section-type='Proposition'] :global(> p:nth-of-type(2)::after) {
		display: block;
		content: '..';
		line-height: 0.5;
		font-size: var(--font-size-8);
		margin-block-end: var(--size-9);
		letter-spacing: var(--font-letterspacing-4);
	}

	[data-section-type='Proposition'] :global(h3) {
		display: block;
		font-size: var(--font-size-5);
	}

	[data-section-type='Proposition'] :global(em) {
		font-style: normal;
	}

	[data-section-type='Proposition'] :global(a) {
		color: var(--purp);
	}

	[data-section-type='Proposition'] :global(h3::before) {
		content: '';
		display: block;
		background-color: var(--gray-1);
		border-radius: 50%;
		width: 150px;
		height: 150px;
	}

	@media (--md-n-above) {
		[data-section-type='Proposition'] :global(.principle) {
			grid-column: span 2;
		}
	}
</style>
