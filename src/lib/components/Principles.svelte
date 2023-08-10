<script>
	export let content;
	export let title;
	export let color;
	export let background;
	import SectionWrapper from './SectionWrapper.svelte';
	import Blob from '$lib/blobs/blob4.svelte';
</script>

<SectionWrapper --background-color={`var(--${background})`} --color={`var(--${color})`}>
	<div class="content" data-section-type={title}>
		<svelte:component this={content} />
	</div>
	<Blob slot="bottom" />
</SectionWrapper>

<style>
	@import 'open-props/media';

	.content {
		max-inline-size: var(--size-lg);
		margin-inline: auto;
		flex-direction: column;
		display: flex;
		align-items: center;
	}

	[data-section-type='Principles'] :global(> p:first-of-type) {
		text-align: center;
		font-size: var(--font-size-fluid-2);
		font-size: var(--font-size-5);
		font-style: normal;
		font-weight: var(--font-weight-7);
		line-height: var(--font-lineheight-2);
		letter-spacing: var(--font-letterspacing-2);
	}

	[data-section-type='Principles'] :global(> p:first-of-type::after) {
		display: block;
		content: '..';
		line-height: 0.5;
		text-align: center;
		font-size: var(--font-size-8);
		letter-spacing: var(--font-letterspacing-4);
	}

	[data-section-type='Principles'] :global(ul) {
		--width: 250px;
		margin-block-start: var(--size-8);
		width: var(--width);
		height: var(--width);
		border-radius: 50%;
		background-color: var(--sun);
		position: relative;
		padding-inline-start: 0;
		transform: scale(0.6);
	}

	[data-section-type='Principles'] :global(li) {
		list-style: none;
		text-align: center;
		width: 150px;
		padding: 0;
		margin: 0;
	}

	[data-section-type='Principles'] :global(li em) {
		font-style: normal;
		color: var(--sun);
		font-size: var(--font-size-3);
		font-weight: var(--font-weight-8);
	}

	[data-section-type='Principles'] :global(li:nth-child(1)) {
		position: absolute;
		text-align: center;
		top: -15%;
		left: 50%;
		transform: translate(-50%, -50%);
	}

	[data-section-type='Principles'] :global(li:nth-child(2)) {
		position: absolute;
		text-align: center;
		top: 25%;
		left: 123%;
		transform: translate(-50%, -50%);
	}

	[data-section-type='Principles'] :global(li:nth-child(3)) {
		position: absolute;
		text-align: center;
		top: 25%;
		left: -23%;
		transform: translate(-50%, -50%);
	}

	[data-section-type='Principles'] :global(li:nth-child(4)) {
		position: absolute;
		text-align: center;
		top: 95%;
		left: -10%;
		transform: translate(-50%, -50%);
	}

	[data-section-type='Principles'] :global(li:nth-child(5)) {
		position: absolute;
		text-align: center;
		top: 95%;
		left: 110%;
		transform: translate(-50%, -50%);
	}

	@media (--md-n-above) {
		[data-section-type='Principles'] :global(ul) {
			transform: scale(1);
			margin-block: var(--size-12);
		}
	}
</style>
