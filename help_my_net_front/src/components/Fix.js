import React from 'react'

export default function Fix(props) {
  return (
    <div className="card mb-3">
      <div className="card-body">
        <h5 className="card-title">Professional: {props.fix.professional}</h5>
        <h6 className="card-subtitle mb-2 text-muted">User: {props.fix.user}</h6>
        <h6 className="card-subtitle mb-2 text-muted">{props.fix.address}</h6>
        <p className="card-text">{props.fix.description}</p>
      </div>
    </div>
  )
}
