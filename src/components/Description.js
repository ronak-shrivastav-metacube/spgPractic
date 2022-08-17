import React from "react";

export default function Description(props)
{
    return (
        <>
            <h1>{props.title}</h1>
            <p className="text-secondary">{props.description}</p>
        </>
    );
}