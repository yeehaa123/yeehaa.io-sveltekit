<script>
	export let content;
	export let title;
	export let color;
	export let background;
	import SectionWrapper from './SectionWrapper.svelte';
	import Blob from '$lib/blobs/blob2.svelte';
	import Blob2 from '$lib/blobs/blob3.svelte';
</script>

<SectionWrapper
	--max-inline-size="1100px"
	--background-color={`var(--${background})`}
	--color={`var(--${color})`}
>
	<Blob slot="top" />
	<div class="content" data-section-type={title}>
		<svelte:component this={content} />
	</div>
	<Blob2 slot="bottom" />
</SectionWrapper>

<style>
	[data-section-type='Problem Statement'] :global(p) {
		color: var(--white, #fff);
		text-align: center;
		font-size: var(--font-size-fluid-2);
		font-style: normal;
		font-weight: var(--font-weight-7);
		line-height: var(--font-lineheight-2);
		letter-spacing: var(--font-letterspacing-2);
	}
</style>
