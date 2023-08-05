<script>
	export let content;
	export let title;
	import SectionWrapper from './SectionWrapper.svelte';
</script>

<SectionWrapper>
	<div data-section-type={title}>
		<svelte:component this={content} />
	</div>
</SectionWrapper>

<style>
</style>
