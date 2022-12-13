import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Welcome to the CloudAstro React Web App.
        </p>
        <a
          className="App-link"
          href="https://github.com/CloudAstro/MicroHack"
          target="_blank"
          rel="noopener noreferrer"
        >
          CloudAstro MicroHack
        </a>
      </header>
    </div>
  );
}

export default App;
