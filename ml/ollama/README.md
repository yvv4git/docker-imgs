# ML - ollama


## Info
https://hub.docker.com/r/ollama/ollama#!
https://github.com/ollama/ollama



## Commands
ollama -h
ollama pull llama2


## API
- Gen response  
````
curl http://localhost:11434/api/generate -d '{
  "model": "llama2",
  "prompt":"Why is the sky blue?"
}'
````

- Chat with a model
````
curl http://localhost:11434/api/chat -d '{
  "model": "mistral",
  "messages": [
    { "role": "user", "content": "why is the sky blue?" }
  ]
}'
````