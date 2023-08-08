<script>
	export let content;
	export let title;
	export let color;
	export let background;
	import SectionWrapper from './SectionWrapper.svelte';
	import Blob from '$lib/blobs/blob2.svelte';
	import Blobi from '$lib/blobs/blob3.svelte';
</script>

<SectionWrapper
	--max-inline-size="1100px"
	--background-color={`var(--${background})`}
	--color={`var(--${color})`}
>
	<Blob slot="top" />
	<div data-section-type={title} data-section-layout="quote">
		<svelte:component this={content} />
	</div>
	<Blobi slot="bottom" />
</SectionWrapper>

<style>
	[data-section-layout='quote'] :global(p) {
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
