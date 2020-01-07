function getBlankOneScore(name) {
  var score = 0;

  if(name.value === "统一建模语言") {
    score = 5;
  }
  return score;
}

function getBlankTwoScore(name) {
  var score = 0;
  var arrayInputs = [], array = [];
  var arrays = ["封装性","继承性","多态性"];

  for(var i = 0; i < name.length; i++){
    arrayInputs.push(name[i].value);
  }

  array = unique(arrayInputs);

  for(var j = 0; j < array.length; j++) {
    for(var x = 0; x < arrays.length; x++){
      if(array[j] === arrays[x]){
        score = score + 5;
      }
    }
  }
  return score;
}

function unique(arr) {
  var result = [], repeated;

  for(var i = 0; i < arr.length; i++) {
    repeated = false;

    for(var j = 0; j < result.length; j++){
      if(arr[i] == result[j]){
        repeated = true;
        break;
      }
    }

    if(!repeated){
      result.push(arr[i]);
    }
  }
  return result;
}

function getRadioScore(radio,answer) {
  var score = 0;

  for(var i = 0; i < radio.length; i++){
    if(radio[i].checked && radio[i].value === answer){
      score = 10;
    }
  }
  return score;
}

function getCheckboxScore(checkBox,answer) {
  var score = 0;
  var string = "";

  for(var i = 0; i < checkBox.length; i++){
    if(checkBox[i].checked){
      string += checkBox[i].value;
    }
  }
  if(string === answer){
    score = 10;
  }
  return score;
}

function getJudgeScore(judge,answer) {
  var score = 0;

  for(var i = 0; i < judge.length; i++){
    if(judge[i].checked && judge[i].value === answer){
      score = 10;
    }
  }
  return score;
}

function getTextareaScore() {
  var score = 0;
  var string = "";

  string = "模型是对现实世界的简化和抽象,模型是对所研究的系统、过程、" +
    "事物或概念的一种表达形式。可以是物理实体;可以是某种图形;" +
    "或者是一种数学表达式。";

  if(document.getElementById("textvalue").value === string) {
    score = score + 20;
  }
  return score;

}

function getScore(){
  var score = 0;
  score += getBlankOneScore(document.getElementById("UMLname")) +
    getBlankTwoScore(document.getElementsByName("special"));

  score += getRadioScore(document.getElementsByName("UMLandSOFT"),"b") +
    getRadioScore(document.getElementsByName("JAVALANG"),"c");

  score += getCheckboxScore(document.getElementsByName("duo"),"abd") +
    getCheckboxScore(document.getElementsByName("lei"),"abc");

  score += getJudgeScore(document.getElementsByName("yongli"),"faluse") +
    getJudgeScore(document.getElementsByName("zhuangtai"),"true");
    
  score += getTextareaScore();

  document.getElementById("score").innerHTML = score;
}
