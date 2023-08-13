<script>
	export let title;
	export let color;
	export let background;
	export let content;
	import SectionWrapper from './SectionWrapper.svelte';
</script>

<SectionWrapper --background-color={`var(--${background})`} --color={`var(--${color})`}>
	<div class="content" data-section-type={title}>
		<svelte:component this={content} />
	</div>
</SectionWrapper>

<style>
	@import 'open-props/media';
	.content {
		max-inline-size: var(--size-lg);
		margin-inline: auto;
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		gap: var(--size-9);
	}

	[data-section-type='Cases'] :global(> p:first-of-type) {
		max-inline-size: var(--size-md);
		margin-inline: auto;
		grid-column: span 3;
		text-align: center;
		line-height: var(--font-lineheight-2);
		font-size: var(--font-size-5);
		font-weight: var(--font-weight-7);
		padding-block: var(--size-9);
	}

	[data-section-type='Cases'] :global(> p:first-of-type::after) {
		display: block;
		content: '..';
		text-align: center;
		line-height: 0.5;
		font-size: var(--font-size-8);
		letter-spacing: var(--font-letterspacing-4);
	}

	[data-section-type='Cases'] :global(h2) {
		display: none;
	}

	[data-section-type='Cases'] :global(section) {
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

	[data-section-type='Cases'] :global(section section) {
		aspect-ratio: 1 / 1.6;
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

	[data-section-type='Cases'] :global(img) {
		aspect-ratio: 1/1;
		transform: rotate(45deg);
		border: 24px solid var(--sun);
		border-radius: 110px;
		z-index: 10;
		margin-block-end: -100px;
	}

	[data-section-type='Cases'] :global(h3) {
		display: block;
		color: var(--white);
		font-size: var(--font-size-4);
		margin-block: var(--size-5);
	}

	[data-section-type='Cases'] :global(p:nth-of-type(2)) {
		position: absolute;
		bottom: var(--size-5);
	}

	[data-section-type='Cases'] :global(p a) {
		align-self: center;
		color: var(--sun);
		font-size: var(--font-size-5);
		margin-block: var(--size-5);
		font-weight: var(--font-weight-9);
	}

	@media (--lg-n-above) {
		[data-section-type='Cases'] :global(section) {
			grid-column: span 1;
			margin-block-end: 0;
		}
	}
</style>
