<script>
	export let title;
	export let color;
	export let background;
	export let content;
	import SectionWrapper from './SectionWrapper.svelte';
</script>

<SectionWrapper --background-color={`var(--${background})`} --color={`var(--${color})`}>
	<div class="content" data-section-type={title}>
		<svelte:component this={content} />
	</div>
</SectionWrapper>

<style>
	.content {
		max-inline-size: var(--size-lg);
		margin-inline: auto;
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		gap: var(--size-9);
	}

	[data-section-type='Cases'] :global(> p:first-of-type) {
		max-inline-size: var(--size-md);
		margin-inline: auto;
		grid-column: span 3;
		text-align: center;
		line-height: var(--font-lineheight-2);
		font-size: var(--font-size-5);
		font-weight: var(--font-weight-7);
		padding-block: var(--size-9);
	}

	[data-section-type='Cases'] :global(> p:first-of-type::after) {
		display: block;
		content: '..';
		text-align: center;
		line-height: 0.5;
		font-size: var(--font-size-8);
		letter-spacing: var(--font-letterspacing-4);
	}
</style>
