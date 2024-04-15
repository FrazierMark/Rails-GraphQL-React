import { useState } from 'react'
import './App.css'
import { useQuery, gql } from '@apollo/client'
import { GET_REPOS } from './queries/queries'

interface repoProps {
  id: number,
  name: string,
  url: string,
}

function App() {
  const { loading, error, data } = useQuery(GET_REPOS);

  if (loading) return <p>Loading.... </p>;
  if (error) return <p>Error: {error.message}</p>;

  return data.repos.map(({ id, name, url }: repoProps) => (
    <div key={id}>
      <h2>{name}</h2>
      <br/>
      <p>{url}</p>
    </div>
  ));
}


export default App
