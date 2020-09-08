import React from "react";

class Calculator extends React.Component {
    constructor(props) {
        super(props);
        this.state = { n1: "", n2: "", result: 0}
        this.setNum1 = this.setNum1.bind(this);
        this.setNum2 = this.setNum2.bind(this);
        this.add = this.add.bind(this);
        this.subtract = this.subtract.bind(this);
        this.divide = this.divide.bind(this);
        this.multiply = this.multiply.bind(this);
    }

    setNum1(e) {
        const n1 = e.target.value ? parseInt(e.target.value) : "";
        this.setState({n1});

    }

    setNum2(e) {
        const n2 = e.target.value ? parseInt(e.target.value) : "";
        this.setState({ n2 });
        
    }
    
    add(e) {
        e.preventDefault();
        const result = this.state.n1 + this.state.n2;
        this.setState({ result})
    }
    subtract(e) {
        e.preventDefault();
        const result = this.state.n1 - this.state.n2;
        this.setState({ result})
    }
    divide(e) {
        e.preventDefault();
        const result = this.state.n1 / this.state.n2;
        this.setState({ result})
    }
    multiply(e) {
        e.preventDefault();
        const result = this.state.n1 * this.state.n2;
        this.setState({ result})
    }

    clear(e) {
        e.preventDefault();
        this.setState({n1: "", n2: "", result: 0})
    }




    render() {
        const {n1, n2, result} = this.state
        return (
            <div>
                <h2>{result}</h2>
                <br />
                <input onChange={this.setNum1} value={n1}/>
                <input onChange={this.setNum2} value={n2}/>
                <br />
                <button onClick={this.add}>+</button>
                <button onClick={this.subtract}>-</button>
                <button onClick={this.divide}>/</button>
                <button onClick={this.multiply}>*</button>
                <br />
                <button onClick={this.clear}>Clear</button>

                
                {/* <input value={this.state.num1}/>
                <input value={this.state.num2}/>
                <h1>{this.state.result}</h1> */}
            </div>
        );
    }
}

export default Calculator;