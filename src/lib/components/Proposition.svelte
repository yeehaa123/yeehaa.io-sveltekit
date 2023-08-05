<script>
	export let content;
	export let title;
	import SectionWrapper from '$lib/components/SectionWrapper.svelte';
</script>

<section data-section-type={title}>
	<SectionWrapper>
		<svelte:component this={content} {title} />
	</SectionWrapper>
</section>

<style>
	@import 'open-props/media';

	section {
		background-color: var(--sun);
		color: var(--curtains);
	}

	[data-section-type='Proposition'] :global(.principle) {
		grid-column: span 4;
	}

	[data-section-type='Proposition'] :global(p) {
		grid-column: span 4;
		margin-block: var(--size-7);
	}

	[data-section-type='Proposition'] :global(:not(.principle) > p:first-of-type) {
		max-inline-size: 900px;
		margin-inline: auto;
		text-align: center;
		font-size: var(--font-size-5);
		font-weight: var(--font-weight-9);
	}

	[data-section-type='Proposition'] :global(h3) {
		display: block;
		font-size: var(--font-size-5);
	}

	[data-section-type='Proposition'] :global(em) {
		font-style: normal;
	}

	[data-section-type='Proposition'] :global(h3::before) {
		content: '';
		display: block;
		background-color: var(--gray-1);
		border-radius: 50%;
		width: 150px;
		height: 150px;
	}

	@media (--md-n-above) {
		[data-section-type='Proposition'] :global(.principle) {
			grid-column: span 2;
		}
	}
</style>
