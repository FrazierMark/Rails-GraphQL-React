import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';
import {
	ApolloClient,
	InMemoryCache,
	ApolloProvider,
} from '@apollo/client';
import './index.css';

const client = new ApolloClient({
	uri: 'http://127.0.0.1:3000/graphql',
	cache: new InMemoryCache(),
});


ReactDOM.createRoot(document.getElementById('root')!).render(
	<ApolloProvider client={client}>
		<App />
	</ApolloProvider>
);
