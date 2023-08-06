<script>
	export let title;
	import VDD from './Value Driven Development.svelte';
</script>

<section data-section-type={title}>
	<VDD />
	<h3>{title}</h3>
	<p><slot /></p>
</section>

<style>
	@import 'open-props/media';
	section {
		grid-column: span 4;
		display: flex;
		flex-direction: column;
		align-items: center;
		max-inline-size: 300px;
		justify-self: center;
		text-align: center;
		margin-block-end: var(--size-9);
	}

	h3 {
		display: block;
		font-size: var(--font-size-5);
		margin-block: var(--size-5);
	}
	.circle {
		background-color: var(--gray-5);
		border-radius: 50%;
		aspect-ratio: var(--ratio-square);
		width: 100%;
	}
	@media (--md-n-above) {
		section {
			grid-column: span 2;
		}
	}
</style>
