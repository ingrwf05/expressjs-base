import dotenv from 'dotenv';
dotenv.config();
import app from './app.js';

const port = process.env.PORT || 80;
app.listen(port, () => {
    console.log(`Listening on http://localhost:${port}`);
});
