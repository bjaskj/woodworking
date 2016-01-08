drawers = []

addDrawer = (id, height) -> 
    drawers.push(
        id: id
        height: height
    )

addDrawer "D1", 60
addDrawer "D2", 60
addDrawer "D3", 100
addDrawer "D4", 150
addDrawer "D5", 150
addDrawer "D6", 220

console.log "Custlist"
console.log "===================================="

railingHeight = 20

cutlist = {}

addCut = (cut) ->
    cutlist[cut] = 0 unless cutlist[cut]?
    cutlist[cut] += 1

for cabinet in [1...4]
    do (cabinet) ->
        console.log "Running cabinet: #{cabinet}"
        for drawer in drawers
            do (drawer) ->
                drawerPartHeight = drawer.height - railingHeight

                addCut "Part A#{drawerPartHeight}: #{drawerPartHeight}x426x12" 
                addCut "Part B#{drawerPartHeight}: #{drawerPartHeight}x600x12" 
                addCut "Part B#{drawerPartHeight}: #{drawerPartHeight}x600x12" 
                addCut "Part C: 600x470x6" 
                addCut "Part D#{drawerPartHeight}: #{drawer.height}x500x15" 
                addCut "Part E#{drawerPartHeight}: #{drawerPartHeight}x600x12" 
                addCut "Part E#{drawerPartHeight}: #{drawerPartHeight}x600x12"

console.log "#{key} - x #{value}" for key, value of cutlist
