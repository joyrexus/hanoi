[
  .[] | 
    {
        timestamp, 
        left: {
            id:  .hands[0].id, 
            pos: {
                x: .hands[0].palmPosition[0],
                y: .hands[0].palmPosition[1],
                z: .hands[0].palmPosition[2]
            },
            vel: {
                x: .hands[0].palmVelocity[0],
                y: .hands[0].palmVelocity[1],
                z: .hands[0].palmVelocity[2]
            }
        },
        right: {
            id:  .hands[1].id, 
            pos: {
                x: .hands[1].palmPosition[0],
                y: .hands[1].palmPosition[1],
                z: .hands[1].palmPosition[2]
            },
            vel: {
                x: .hands[1].palmVelocity[0],
                y: .hands[1].palmVelocity[1],
                z: .hands[1].palmVelocity[2]
            }
        }
    }
]
