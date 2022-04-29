
import Fix from "./components/Fix";
import axios from "axios";
import { useEffect, useState } from "react";

const API_FIXES = 'http://localhost:3000/api/v1/fixes';

function getFixes(){
  return axios.get(API_FIXES).then((response) => response.data);
}

function App() {
  const [fixes, setFixes] = useState([]);

  useEffect(() => {
    getFixes().then((fixesFromApi) => {
      setFixes(fixesFromApi)
    })
  },[])
  return (
    <div className="App">
      <main>
      <div className="container">
      <h1>You have these fixes</h1>
        {
          fixes.map((fix) => {
            return <Fix key={fix.id} fix={fix} />
          })
        }
      </div>
      </main>
    </div>
  );
}

export default App;
