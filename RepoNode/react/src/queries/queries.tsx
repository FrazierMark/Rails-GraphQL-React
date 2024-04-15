import { gql } from '@apollo/client';

export const GET_REPOS = gql`
	query GetRepos {
		repos {
			id
			name
			url
		}
	}
`;
