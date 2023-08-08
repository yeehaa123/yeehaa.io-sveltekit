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
	@import 'open-props/media';

	[data-section-type='Cases'] :global(> p:first-of-type) {
		text-align: center;
		line-height: var(--font-lineheight-2);
		font-size: var(--font-size-4);
		font-weight: var(--font-weight-7);
	}

	[data-section-type='Cases'] :global(> p:first-of-type::after) {
		display: block;
		content: '..';
		line-height: 0.5;
		font-size: var(--font-size-8);
		letter-spacing: var(--font-letterspacing-4);
	}
</style>
