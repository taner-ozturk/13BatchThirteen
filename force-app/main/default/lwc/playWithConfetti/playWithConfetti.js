import { LightningElement } from 'lwc';
import { loadScript } from "lightning/platformResourceLoader";
import CONFETTI from "@salesforce/resourceUrl/confetti";

export default class PlayWithConfetti extends LightningElement {
    connectedCallback(){
        Promise.all([loadScript(this, CONFETTI )])
          .then(()=>{
            this.setUpCanvas();
          })
          .catch(error => {
            console.log(error)
          });
    }
    
    setUpCanvas(){
        var confettiCanvas = this.template.querySelector("canvas.confettiCanvas");
        this.myconfetti = confetti.create(confettiCanvas, { resize: true });
        this.myconfetti({
            zIndex: 10000
        });
    }
      
    basicCannon(){
        confetti({
            particleCount: 100,
            spread: 70,
            origin: {
            y: 0.6
            }
        });
    }

    randomFun(min, max){
        return Math.random() * (max - min) + min;
    }
    
    
    randomCannon(){
        confetti({
            angle: this.randomFun(55, 125),
            spread: this.randomFun(50, 70),
            particleCount: this.randomFun(50, 100),
            origin: {
                y: 0.6
            }
        });
    }
    
    
    fireworks() {
        var end = Date.now() + 15 * 1000;
        let interval = setInterval(function() {
            if (Date.now() > end) {
            return clearInterval(interval);
            }
            confetti({
                startVelocity: 30,
                spread: 360,
                ticks: 60,
                origin: {
                    x: Math.random(),
                    y: Math.random() - 0.2
                }
                });
        }, 200);
    }

    shower(){
        var end = Date.now() + (15 * 100);
        (function frame() {
            confetti({
            particleCount: 10,
            startVelocity: 0,
            ticks: 300,
            origin: {
            x: Math.random(),
            y: 0
                },
            });
            if (Date.now() < end) {
            requestAnimationFrame(frame);
            }
        }());
    }

    celebration(){
        var end = Date.now() + (15 * 100);
        (function frame() {
        confetti({
            particleCount: 10,
            angle: 60,
            spread: 25,
            origin:{
            x: 0,
            y : 0.65
                }, 
            });
        confetti({
            particleCount: 10,
            angle: 120,
            spread: 25,
            origin:{
            x: 1,
            y : 0.65
                },  
            });
        if (Date.now() < end) {
            requestAnimationFrame(frame);
            }
        }());
    }

    burst(){
        var end = Date.now() + (15 * 75);
        (function frame() {
            // #1
            confetti({
            particleCount: 7,
            startVelocity: 25,
            angle: 335,
            spread: 10,
            origin:{
            x: 0,
            y: 0,
                },
                }); 
            // #2
            confetti({
            particleCount: 7,
            startVelocity: 25,
            angle: 205,
            spread: 10,
            origin:{
                x: 1,
                y: 0,
                },
                });
            // #3
            confetti({
            particleCount: 7,
            startVelocity: 35,
            angle: 140,
            spread: 30,
            origin:{
            x: 1,
            y: 1,
                },
                });
            // #4
            confetti({
            particleCount: 7,
            startVelocity: 35,
            angle: 40,
            spread: 30,
            origin: {
                x: 0,
                y: 1,
                    },
                });
                if (Date.now() < end) {
                    requestAnimationFrame(frame);
                }
        }());
    }

}