import { useEffect, useState } from "react";
import QuestionItem from "./QuestionItem";
import { NavLink } from "react-router-dom";
import Modal from "./Modal.js";

const linkStyles = {
    display: "inline-block",
    width: "100px",
    padding: "5px",
    margin: "0 6px 6px",
    background: "black",
    textDecoration: "none",
    color: "white"
  };

const JavaScript = props => {
  const {questions, setQuestions, points, handleAnswer, setPoints} = props;
  const [show, setShow ] = useState(false);

  useEffect(() => {
      fetch("/subject/1")
      .then((r) => r.json())
      .then((data) => {setQuestions(data.questions)
    })
  }, [setQuestions]);

  function handleDeleteClick(id) {
      fetch(`/question/${id}`, {
        method: "DELETE",
      })
        .then((r) => r.json())
        .then(() => {
          const updatedQuestions = questions.filter((q) => q.id !== id);
          setQuestions(updatedQuestions);
        });
    }

  const questionItems = questions.map((q, index) => (
    <QuestionItem
      key={q.id}
      question={q}
      questionindex={index}
      onDeleteClick={handleDeleteClick}
      handleAnswer={handleAnswer}
      questions={questions}
    />
  ));

  return (
    <>
      <NavLink
        to="/"
        exact
        style={linkStyles}
      >
      Home
      </NavLink>
      <NavLink
        to="/question"
        exact
        style={linkStyles}
      >
      Add Question
      </NavLink>
      <section>
        <b><h1>JavaScript Quiz</h1></b>
        <h3><ul>{questionItems}</ul></h3>
        <button 
        className="white_button" 
        onClick={()=> setShow(show => !show)}
        >
        Submit Quiz
        </button>
        <Modal 
          onClose={()=>{
            setShow(show => !show)
            setPoints(0)
          }} 
          setPoints={setPoints} 
          questions = {questions} 
          setShow={setShow} 
          show={show} 
          points={points}/>
      </section>
    </>
  )
}

export default JavaScript;