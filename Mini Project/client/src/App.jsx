import React, { useEffect, useState } from 'react'
import { io } from 'socket.io-client'

const socket = io('http://localhost:5000')

export default function App() {
  const [message, setMessage] = useState('')
  const [chat, setChat] = useState([])

  useEffect(() => {
    socket.on('chat message', msg => {
      setChat(prev => [...prev, msg])
    })
  }, [])

  const sendMessage = (e) => {
    e.preventDefault()
    socket.emit('chat message', message)
    setMessage('')
  }

  return (
    <div style={{ padding: 20 }}>
      <h1>Chat App</h1>
      <form onSubmit={sendMessage}>
        <input value={message} onChange={e => setMessage(e.target.value)} placeholder="Type a message..." />
        <button type="submit">Send</button>
      </form>
      <ul>
        {chat.map((msg, index) => <li key={index}>{msg}</li>)}
      </ul>
    </div>
  )
}
