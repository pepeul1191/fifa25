import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min.js';
import '../stylesheets/styles.css';
import App from '../components/layouts/App.svelte';

const app = new App({
	target: document.body,
	props: {
		name: 'world'
	}
});

export default app;