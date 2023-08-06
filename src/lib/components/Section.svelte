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
	<div data-section-type={title}>
		<svelte:component this={content} />
	</div>
</SectionWrapper>
