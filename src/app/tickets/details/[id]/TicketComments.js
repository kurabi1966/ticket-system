'use client';
import { useRef } from "react";

const comments = [
    {
        id: 1,
        author: "Dave",
        date: "2027-01-01",
        content: "This is a comment from Dave",
    },
    {
        id: 2,
        author: "Alice",
        date: "2027-01-02",
        content: "This is a comment from Alice",
    },
];

export function TicketComments() {
    const commentRef = useRef(null);
    return (
    <footer>
    <h4>Comments</h4>
    <textarea placeholder="Add a comment"></textarea>
    <button>Add comment</button>
    <section>
        {comments.map((comment) => (
            <div key={comment.id}>
                <strong>{comment.author} </strong>
                <time>{comment.date}</time>
                <p>{comment.content}</p>
            </div>
        ))}
    </section>
    </footer>
    );
}