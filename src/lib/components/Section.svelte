<script>
	export let content;
	export let title;
	export let color;
	export let background;
	import SectionWrapper from './SectionWrapper.svelte';
</script>

<SectionWrapper
	--background-color={`var(--${background})`}
	--color="{`var(--${color}`})"
	--max-inline-size="var(--size-md)"
>
	<div data-section-type={title}>
		<svelte:component this={content} />
	</div>
</SectionWrapper>
