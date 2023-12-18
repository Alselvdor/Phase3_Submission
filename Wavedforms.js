// Randomizer
{signal: [
  {name: 'clk', wave: 'P......'},
  {name: 'reset', wave: '10.....'},
  {name: 'load', wave: '010....'},
{},
  {name: 'ready in', wave: '0.1...0'},
  {name: 'ready out', wave: '0.1...0'},
  {name: 'data in', wave: 'x.3333x', data:  ['Stream 1', 'Stream 2', 'Stream 3', 'Stream 4']},
{},
  {name: 'data out', wave: 'x.5555x', data:  ['Stream 1', 'Stream 2', 'Stream 3', 'Stream 4']},
  {name: 'valid out', wave: '0.1...0'},
  {name: 'valid in', wave: '0.1...0'},


],
 head:{
  text:'RANDI',
   tick:0,
 },
"config" : { "hscale" : 2.5 }
}
  


  // FEC
  {signal: [
    {name: 'clk_50MHz', wave: 'P......', period: 2},
    {name: 'clk_100MHz', wave: 'P.............', period: 1},
    {name: 'reset', wave: '1.0...........'},
  {},
    {name: 'data in', wave: 'x.3.3.3.3.x...', data: ['Stream 1', 'Stream 2', 'Stream 3', 'Stream 4']},
    {name: 'valid in', wave: '0.1.......0...'},
        {name: 'ready in', wave: '0.1.......0...'},


  
  {},
    {name: 'data out', wave: 'x...5.5.5.5.x.', data: ['Stream 1', 'Stream 2', 'Stream 3', 'Stream 4']},
    {name: 'valid out', wave: '0...1.......0.'},
        {name: 'ready out', wave: '0.1.......0...'},

  
  ],
   head:{
    text:'FEC ',
     tick:0,
   },
  "config" : { "hscale" : 1.5 }
  }
  
    


  // Interleaver 
  {signal: [
    {name: 'clk_100MHz', wave: 'P......', period: 1},
    {name: 'reset', wave: '10.....'},
    {},
    {name: 'data in', wave: 'x3333x.', data: ['Stream 1', 'Stream 2', 'Stream 3', 'Stream 4']},
    {name: 'ready In', wave: '01...0.'},
    {name: 'Valid In', wave: '01...0.'},
    {},

    {name: 'data out', wave: 'x.5555x', data: ['Stream 1', 'Stream 2', 'Stream 3','Stream 4']},
    {name: 'valid out', wave: '0.1...0'},
    {name: 'ready out', wave: '01...0.'},
  
  ],
   head:{
    text:'INTER',
     tick:0,
   },
  "config" : { "hscale" : 3 }
  }


  // Modulator 
  {signal: [
    {name: 'clk_100MHz', wave: '0.P.................', period: 1},  
    {name: 'reset', wave: '10..................'},
  {},


    {name: 'data in', wave: '..x3...3...3...3...x', data: ['stream 1', 'stream 2', 'stream 3', 'stream 4']},
    {name: 'ready In', wave: '0..1...............0'},
    {name: 'Valid In', wave: '0..1...............0'},
  
  {},

    {name: 'data out', wave: 'x..5...5...5...5...x', data: ['stream 1', 'stream 2','stream 3','stream 4']},
        {name: 'Ready out', wave: '0..1...............0'},
    {name: 'valid out', wave: '0..1...............0'},
  
  ],
   head:{
    text:'MODU ',
     tick:0,
   },
  "config" : { "hscale" : 1 }
  }
  
  
    
  // Top module 
  {signal: [
    {name: 'clk', wave: 'P.........', period: 2},
    {name: 'clk_50MHz', wave: '0P..P.....', period: 2},
    {name: 'clk_100MHz', wave: '0.P.................', period: 1},  
     {},
    {name: 'reset', wave: '10..................'},
    {name: 'locked', wave: '0.1.................'},
    {name: 'load', wave: '0.1.0...............'},
        {},
    {name: 'ready In', wave: '0...1.......0.......'},
    {name: 'valid in', wave: '0...1.......0.......'},
    {name: 'data in', wave: 'x...3.3.3.3.x.......', data: ['stream 1', 'stream 2', 'stream 3', 'stream 4']},
           {},
     {name: 'data out', wave: 'x.......5.5.5.5.x...', data: ['stream 1', 'stream 2', 'stream 3', 'stream 4']},
    {name: 'valid out', wave: '0.......1.......0...'},
    {name: 'ready out', wave: '0...1.......0.......'},

  
  ],
   head:{
    text:'TopWiMax',
     tick:0,
   },
  "config" : { "hscale" : 1 }
  }