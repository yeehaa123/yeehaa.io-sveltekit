<script>
	export let content;
	export let title;
	export let color;
	export let background;
	import SectionWrapper from './SectionWrapper.svelte';
</script>

<SectionWrapper
	--max-inline-size="1100px"
	--background-color={`var(--${background})`}
	--color={`var(--${color})`}
>
	<div data-section-type="quote">
		<svelte:component this={content} />
	</div>
</SectionWrapper>

<style>
	[data-section-type='quote'] {
		padding-block: var(--size-fluid-8);
	}

	[data-section-type='quote'] :global(p) {
		color: var(--white, #fff);
		text-align: center;
		font-family: var(--font-sans);
		font-size: var(--font-size-fluid-2);
		font-style: normal;
		font-weight: var(--font-weight-7);
		line-height: var(--font-lineheight-3);
		letter-spacing: var(--font-letterspacing-2);
	}
</style>
