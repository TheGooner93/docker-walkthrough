import express, { Express, Request, Response } from "express";

const app: Express = express();

app.get("/", (req: Request, res: Response) => {
 res.status(200).send("Hello from Ehab's and teams' demo server!!!");
});

app.listen(4000, () => {
 console.log(`App is available on http://localhost:4000`);
});