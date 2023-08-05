<script>
	export let content;
	export let title;
</script>

<section data-section-type={title}>
	<svelte:component this={content} />
</section>

<style>
	section {
		padding-block: var(--size-9);
	}
	[data-section-type='Tagline'] :global(p) {
		color: var(--white, #fff);
		text-align: center;
		font-family: Montserrat Alternates;
		font-size: var(--font-size-fluid-2);
		font-style: normal;
		font-weight: 700;
		line-height: 145%; /* 79.75px */
		letter-spacing: 1.1px;
	}
</style>
