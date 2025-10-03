import dotenv from 'dotenv';
dotenv.config();
import app from './app.js';

//Important when deploying the app it needs to run on port 80 in ordre to work
//To be able to launch it locally you to do "sudo npm run dev"
const port = process.env.PORT || 80;
app.listen(port, () => {
    console.log(`Listening on http://localhost:${port}`);
});
