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
	--padding-block={0}
>
	<div class="content" data-section-type={title}>
		<svelte:component this={content} />
		<div class="cta-wrapper"><a>Connect</a></div>
	</div>
	<Blob slot="bottom" />
</SectionWrapper>

<style>
	.content {
		max-inline-size: var(--size-md);
		margin-inline: auto;
		padding-block-start: var(--size-13);
	}

	[data-section-type='Call To Action'] :global(p) {
		color: var(--curtains, #fff);
		text-align: center;
		font-size: var(--font-size-fluid-2);
		font-style: normal;
		font-weight: var(--font-weight-7);
		line-height: var(--font-lineheight-2);
		letter-spacing: var(--font-letterspacing-2);
	}
	[data-section-type='Call To Action'] :global(p strong) {
		font-weight: var(--font-weight-9);
	}

	[data-section-type='Call To Action'] :global(p:nth-of-type(2)) {
		margin-block: var(--size-11);
	}

	[data-section-type='Call To Action'] :global(p:nth-of-type(3)) {
		display: none;
	}

	.cta-wrapper {
		display: flex;
		margin-block-start: var(--size-5);
		justify-content: center;
	}

	.cta-wrapper a {
		background-color: var(--purp);
		color: var(--white);
		text-align: center;
		font-size: var(--font-size-fluid-2);
		font-style: normal;
		font-weight: var(--font-weight-7);
		line-height: var(--font-lineheight-2);
		letter-spacing: var(--font-letterspacing-2);
		padding-block: var(--size-2);
		padding-inline: var(--size-4);
	}
</style>
