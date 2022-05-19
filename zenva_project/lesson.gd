
static func randomNum(min1, min2):
    var rng = RandomNumberGenerator.new()
    rng.randomize()
    var num = rng.randf_range(min1, min2)
    print(num)
    return num

func _ready():
    randomNum(1, 10)
