import { useState } from 'react';
import Button from './Button.js'

const linkStyles = {
    display: "inline-block",
    width: "100px",
    padding: "2.5px",
    margin: "0 3px 3px",
    background: "black",
    textDecoration: "none",
    color: "white",
    fontSize: "15px"
};

const QuestionItem = props => {
    const [ disable, setDisable ] = useState(false)
    const {question, onDeleteClick, questionindex, handleAnswer, setQuestions, questions} = props 
    const {prompt, answer1, answer2, answer3, answer4, id, correct_answer} = question
    const answers = [answer1, answer2, answer3, answer4]
    const questionID = id
    const buttons = answers.map((answer, index) => (
        <Button 
        key={index} 
        index={index} 
        handleAnswer={handleAnswer} 
        answer={answer} 
        correct_index={questionindex}
        disable={disable}
        setDisable={setDisable}
        allAnswers={answers}
        question={question}
        correct_answer={correct_answer}
        />
    ));

    function handleDeleteClick() {
        console.log(questionID);
       fetch(`/question/${questionID}`, {
           method: 'DELETE',
       }).then(window.location.reload())
       
    }

    // function handleDelete(questionID) {
    //     console.log(questionID)
        // fetch(`/question/${id}`, {
        //   method: "DELETE",
        // })
        //   .then((r) => r.json())
        //   .then(() => {
        //     const updatedQuestions = questions.filter((q) => q.id !== id);
        //     setQuestions(updatedQuestions);
           
        //   });
    //   }


    return (
        <li>
            <b><h2>{prompt}</h2></b>
            <h5><em> Choose Your Answer:</em></h5>
            {buttons}
            <button 
            style={linkStyles} 
            className='delete_button'
            onClick={handleDeleteClick}
            >Delete
            </button>
        </li>
    )
}

export default QuestionItem;