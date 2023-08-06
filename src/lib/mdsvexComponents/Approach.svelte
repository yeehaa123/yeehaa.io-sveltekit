<script>
	export let title;
	import VDD from './Value Driven Development.svelte';
	import VoT from './Vessel of Transformation.svelte';
	import EL from './Engagement Loops.svelte';
	import OG from './Organic Governance.svelte';
	export const svgs = {
		'Value Driven Development': VDD,
		'Vessel of Transformation': VoT,
		'Engagement Loops': EL,
		'Organic Governance': OG
	};
</script>

<section data-section-type={title}>
	<svelte:component this={svgs[title]} />
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
		color: var(--purp);
		font-size: var(--font-size-5);
		margin-block: var(--size-5);
	}

	@media (--md-n-above) {
		section {
			grid-column: span 2;
		}
	}
</style>
