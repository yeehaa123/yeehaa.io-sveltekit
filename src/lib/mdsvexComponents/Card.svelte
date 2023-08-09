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
	<img class="image" src={`/images/${title}.png`} alt={title} />
	<div class="content">
		<h3>{title}</h3>
		<p><slot /></p>
		<a href="/about">view case</a>
		<div />
	</div>
</section>

<style>
	@import 'open-props/media';
	section {
		display: flex;
		flex-direction: column;
		overflow: hidden;
		grid-column: span 3;
		width: 100%;
		align-items: center;
		justify-self: center;
		text-align: center;
		margin-block-end: var(--size-9);
	}
	.content {
		aspect-ratio: 1 / 1.5;
		display: flex;
		position: relative;
		flex-direction: column;
		background-color: var(--purp);
		color: var(--white);
		border-radius: 110px;
		padding-block: var(--size-9);
		padding-inline: var(--size-7);
		padding-block-start: 140px;
	}
	.image {
		aspect-ratio: 1/1;
		transform: rotate(45deg);
		border: 24px solid var(--sun);
		border-radius: 110px;
		z-index: 10;
		margin-block-end: -100px;
	}

	.content h3 {
		display: block;
		color: var(--white);
		font-size: var(--font-size-4);
		margin-block: var(--size-5);
	}

	.content a {
		position: absolute;
		bottom: var(--size-5);
		align-self: center;
		color: var(--sun);
		font-size: var(--font-size-5);
		margin-block: var(--size-5);
		font-weight: var(--font-weight-9);
	}

	@media (--lg-n-above) {
		section {
			grid-column: span 1;
			margin-block-end: 0;
		}
	}
</style>
