import { useState } from "react";
import QuestionItem from './QuestionItem';

function QuestionList({ handleAnswer}){

  const [questions, setQuestions] = useState([]);
 

  

  const questionItems = questions.map((q, index) => (
    <QuestionItem
      key={q.id}
      questionindex={index}
      question={q}
      setQuestions={setQuestions}
      questions={questions}
      handleAnswer={handleAnswer}
    />
  ));

  return (
    <section>
      <h1>Edit Quiz Questions</h1>
      <ul>{questionItems}</ul>
    </section>
  );
}

export default QuestionList;