<script>
	import Logo from '$lib/components/Logo.svelte';
	import NavLink from './NavLink.svelte';
</script>

<header>
	<nav>
		<a href="/"><Logo /></a>
		<ul class="menu">
			<NavLink href="/About">ABOUT</NavLink>
			<NavLink href="/About">CONNECT</NavLink>
		</ul>
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

	nav,
	ul {
		display: flex;
		justify-content: space-between;
	}

	ul {
		gap: 0;
		list-style: none;
		margin-left: 0;
		padding-left: 0;
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
