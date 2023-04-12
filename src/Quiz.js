import React, { useState } from "react";
import axios from "axios";
// default question object define
const quiz = {
  topic: "Sports",
  totalQuestions: 10,
  perQuestionScore: 1,
  questions: [
    {
      question: "",
      choices: [],
      correctAnswer: 5,
    },
  ],
};
// base API url
const baseURL = "http://localhost/quize/api/";

// component
const Quize = () => {
  const [activeQuestion, setActiveQuestion] = useState(0);
  const [selectedAnswer, setSelectedAnswer] = useState("");
  const [showResult, setShowResult] = useState(false);
  const [selectedAnswerIndex, setSelectedAnswerIndex] = useState(null);
  const [selectedTopic, setselectedTopic] = useState(0);
  const [selectedTopicquiz, setSelectedTopicquiz] = useState(quiz);
  const [result, setResult] = useState({
    score: 0,
    correctAnswers: 0,
    wrongAnswers: 0,
  });

  const [topics, settopics] = useState([]);

  const [Answered] = useState([]);
  const { questions } = selectedTopicquiz;
  const { question, choices, correctAnswer } = questions[activeQuestion];

  // fetch topics from database
  React.useEffect(() => {
    axios.get(baseURL + "topic/read.php").then((response) => {
      settopics(response.data.records);
    });
  }, []);

  // define function for select Question which topic selected by user
  const getQuestions = async (selectedTopic) => {
    const post = { topic: selectedTopic };
    try {
      const res = await axios.post(baseURL + "questions/read.php", post);
      setSelectedTopicquiz(res.data.records);
    } catch (e) {
      alert(e);
    }
  };

  //Add quitionnaire answer in databse
  const addQuestions = async (Answers) => {
    const post = { allAnswer: Answers };
    try {
      await axios.post(baseURL + "questions/add.php", post);
    } catch (e) {
      alert(e);
    }
  };

  // event on selected topic
  const onTopicSelected = (topic, index) => {
    if (selectedAnswer === "") {
      // if we start select answer select topic will be disabled
      setselectedTopic(index);
      getQuestions(index);
    }
  };

  // change vaiable state when user click on next button 
  const onClickNext = () => {
    setSelectedAnswerIndex(null);
    Answered.push(selectedAnswerIndex);
    if (activeQuestion === questions.length - 1) {
      addQuestions(Answered);
    }
    setResult((prev) =>
      selectedAnswer
        ? {
            ...prev,
            score: prev.score + 1,
            correctAnswers: prev.correctAnswers + 1,
          }
        : { ...prev, wrongAnswers: prev.wrongAnswers + 1 }
    );
    if (activeQuestion !== questions.length - 1) {
      setActiveQuestion((prev) => prev + 1);
    } else {
      setActiveQuestion(0);
      setShowResult(true);
    }
  };

  const onAnswerSelected = (answer, index) => {
    setSelectedAnswerIndex(answer.AnsID);

    if (answer.AnsID === correctAnswer) {
      setSelectedAnswer(true);
    } else {
      setSelectedAnswer(false);
    }
  };

  const addLeadingZero = (number) => (number > 9 ? number : `0${number}`);
  const addLevel = (number) =>
    number <= 3 ? `Beginners` : number <= 7 ? `Intermidiate` : `professional`;

  return (
    <div className="quiz-container">
      {selectedTopic > 0 ? (
        !showResult ? (
          <div>
            {
              <div>
                <div>
                  <span className="active-question-no">
                    {addLeadingZero(activeQuestion + 1)}
                  </span>
                  <span className="total-question">
                    /{addLeadingZero(questions.length)}
                  </span>
                  <span className="active-question-no">
                    -{addLevel(activeQuestion + 1)}
                  </span>
                </div>
                <h2>{question}</h2>

                <ul>
                  {choices.length &&
                    choices.map((answer, index) => (
                      <li
                        onClick={() => onAnswerSelected(answer, index)}
                        key={answer.ans}
                        className={
                          selectedAnswerIndex === answer.AnsID
                            ? "selected-answer"
                            : null
                        }
                      >
                        {answer.ans}
                      </li>
                    ))}
                </ul>
                <div className="flex-right">
                  <button
                    onClick={onClickNext}
                    disabled={selectedAnswerIndex === null}
                  >
                    {activeQuestion === questions.length - 1
                      ? "Finish"
                      : "Next"}
                  </button>
                </div>
              </div>
            }
          </div>
        ) : (
          <div className="result">
            <h3>Result</h3>
            <p>
              Total Question: <span>{questions.length}</span>
            </p>
            <p>
              Total Score:<span> {result.score}</span>
            </p>
            <p>
              Correct Answers:<span> {result.correctAnswers}</span>
            </p>
            <p>
              Wrong Answers:<span> {result.wrongAnswers}</span>
            </p>
          </div>
        )
      ) : (
        <div>
          <ul id="menu">
            {topics.length &&
              topics.map((topic, ind) => (
                <li
                  onClick={() =>
                    onTopicSelected(topic.topic_name, topic.topicID)
                  }
                  key={topic.topicID}
                  disabled={selectedAnswerIndex === null}
                  className={
                    selectedTopic === topic.topicID ? "selected-topic" : null
                  }
                >
                  {topic.topic_name}
                </li>
              ))}
          </ul>
        </div>
      )}
    </div>
  );
};
export default Quize;
