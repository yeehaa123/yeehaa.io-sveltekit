<script>
	export let content;
	export let title;
	export let color;
	export let background;
	import SectionWrapper from './SectionWrapper.svelte';
	import Blob from '$lib/blobs/blob5.svelte';
</script>

<SectionWrapper
	--max-inline-size="1100px"
	--background-color={`var(--${background})`}
	--color={`var(--${color})`}
>
	<div class="content">
		<svelte:component this={content} />
	</div>
	<Blob slot="bottom" />
</SectionWrapper>

<style>
	.content :global(p) {
		color: var(--white, #fff);
		text-align: center;
		font-size: var(--font-size-fluid-2);
		font-style: normal;
		font-weight: var(--font-weight-7);
		line-height: var(--font-lineheight-2);
		letter-spacing: var(--font-letterspacing-2);
	}
</style>
