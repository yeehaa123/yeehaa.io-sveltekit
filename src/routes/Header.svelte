<script>
	import Logo from '$lib/components/Logo.svelte';
</script>

<header>
	<nav>
		<a href="/"><Logo /></a>
		<nav>
			<a href="/about">About</a>
			<a href="/about">Connect</a>
		</nav>
	</nav>
</header>

<style>
	@import 'open-props/media';

	header {
		font-family: var(--font-accent);
		font-size: var(--font-size-3);
		padding-block: var(--size-4);
		padding-inline: var(--size-5);
	}
	a {
		height: 100%;
	}

	nav {
		display: flex;
		gap: var(--size-4);
		justify-content: space-between;
	}

	@media (--md-n-above) {
		header {
			padding-inline: var(--size-8);
			font-size: var(--font-size-5);
		}

		nav {
			gap: var(--size-8);
		}
	}
</style>
