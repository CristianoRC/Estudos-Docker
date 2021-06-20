const express = require('express');
const connection = require('./connections');

const app = express();
app.use(express.json());

app.get('/', async (_req, res) => {
    const db = await connection();
    const tasks = await db.collection('messages').find().toArray();
    if (tasks.length != 0)
        return res.status(200).json(tasks);
    return res.status(204).send();
});

app.post('/', async (req, res) => {
    const db = await connection();
    db.collection('messages').insertOne(req.body);
    res.status(201).json(req.body);
});

app.listen(3000, () => console.log("Api rodando"));