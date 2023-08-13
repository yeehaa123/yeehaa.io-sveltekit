<script>
	export let content;
	export let title;
	export let color;
	export let background;
	import SectionWrapper from './SectionWrapper.svelte';
</script>

<SectionWrapper --background-color={`var(--${background})`} --color={`var(--${color})`}>
	<div class="content" data-section-type={title}>
		<svelte:component this={content} />
	</div>
</SectionWrapper>

<style>
	@import 'open-props/media';

	.content {
		max-inline-size: var(--size-lg);
		margin-inline: auto;
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		gap: var(--size-9);
	}

	[data-section-type='Proposition'] :global(> p:first-of-type),
	[data-section-type='Proposition'] :global(> p:nth-of-type(2)) {
		grid-column: span 4;
		text-align: center;
		line-height: var(--font-lineheight-2);
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
		letter-spacing: var(--font-letterspacing-4);
	}

	[data-section-type='Proposition'] :global(a) {
		color: var(--purp);
	}

	[data-section-type='Proposition'] :global(section) {
		grid-column: span 4;
		display: flex;
		flex-direction: column;
		align-items: center;
		max-inline-size: var(--size-xs);
		justify-self: center;
		text-align: center;
		padding: var(--size-5);
		padding-block: var(--size-5);
	}

	[data-section-type='Proposition'] :global(section p) {
		order: 2;
	}

	[data-section-type='Proposition'] :global(h2) {
		display: block;
		order: 1;
		color: var(--purp);
		font-size: var(--font-size-5);
		padding-block: var(--size-6);
		max-width: 100%;
		padding-inline: var(--size-6);
	}

	@media (--md-n-above) {
		[data-section-type='Proposition'] :global(section) {
			grid-column: span 2;
		}
	}
</style>
