import React, { useState, useEffect } from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  const [data, setData] = useState('');

  useEffect(() => {
    (async function () {
      const { text } = await( await fetch(`/api/message`)).json();
      setData(text);
    })();
  });

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Welcome to <a
          className="App-link"
          href="https://github.com/CloudAstro/MicroHack"
          target="_blank"
          rel="noopener noreferrer"
        >
        MicroHack
        </a> React Web App.
        </p>
       
      </header>
      {data}
    </div>
  );
  // return <div>{data}</div>;
}

export default App;