// Constants
String[] possible = {
  "mindfulness meditation", 
  "yoga",
  "mindful eating",
  "a mindful walk",
  "coloring",
  "sit in a park",
  "go for a hike",
  "go on a run",
  "power walk",
  "swim",
  "riding a bike",
  "dancing",
  "listen to music and relax", 
  "tell some jokes",
  "watch a funny movie",
  "listen to a comedian",
  "focus thoughts on something positive",
  "relax and have a happy daydream",
  "spend time with family",
  "spend time with friends",
  "turn off the social media and be social in person!",
  "make a list of all the things you are grateful for",
  "write down three things that happened that were positive today",
  "buy/make a gift for someone", 
  "pay for a stranger’s coffee or ice cream",
  "write a thank you note",
  "call someone who has made a difference in your life",
  "make a list of things you are looking forward to in the near future",
  "make a conscious shift to the positive when you have negative thoughts"
};

// Globals
int offset = 0;
int offsetVel = 5;
int offsetThresh = int(height * 0.25);
String pMsg = "";

// Helpers
void renderBall(int y, String msg) {
  float cx = width / 2;
  float cy = height / 2;
  float qx = cx / 2;
  float qy = cy / 2;
  fill(0);
  ellipse(cx, y, width, height);
  fill(60, 0, 255);
  triangle(cx, y - cy + 10, 20, cy + y - qy, width - 20, cy + y - qy);
  fill(255);
  textAlign(CENTER);
  text(msg, qx + 3, y - 20, cx, cy);
};

// Main Process
void setup() {
  size(200, 200);
};

void draw() {
  background(224, 168, 25);
  renderBall(height / 2 + offset, pMsg);
  if (mousePressed) {
    pMsg = possible[floor(random(possible.length))];
    offset += offsetVel;
    if (abs(offset) > offsetThresh) {
      offsetVel *= -1;
    }
  }
};
