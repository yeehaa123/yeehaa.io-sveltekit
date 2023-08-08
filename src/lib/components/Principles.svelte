<script>
	export let content;
	export let title;
	export let color;
	export let background;
	import SectionWrapper from './SectionWrapper.svelte';
	import Blob from '$lib/blobs/blob4.svelte';
</script>

<SectionWrapper --background-color={`var(--${background})`} --color={`var(--${color})`}>
	<div class="content" data-section-type={title}>
		<svelte:component this={content} />
	</div>
	<Blob slot="bottom" />
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

	[data-section-type='Principles'] :global(> p:first-of-type) {
		grid-column: span 4;
		text-align: center;
		font-size: var(--font-size-fluid-2);
		font-style: normal;
		font-weight: var(--font-weight-7);
		line-height: var(--font-lineheight-2);
		letter-spacing: var(--font-letterspacing-2);
	}

	[data-section-type='Principles'] :global(> p:first-of-type::after) {
		display: block;
		content: '..';
		line-height: 0.5;
		font-size: var(--font-size-8);
		letter-spacing: var(--font-letterspacing-4);
	}
</style>
