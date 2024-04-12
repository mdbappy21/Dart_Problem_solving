#include <bits/stdc++.h>

std::vector<int> spell(const std::string& magic, int level) {
    std::vector<int> fire = {200, 20, 30, 50};
    std::vector<int> water = {300, 10, 25, 40};
    std::vector<int> earth = {400, 25, 55, 70};
    std::vector<int> air = {100, 18, 38, 60};

    if (magic == "fire") {
        return {fire[0], fire[level]};
    } else if (magic == "water") {
        return {water[0], water[level]};
    } else if (magic == "earth") {
        return {earth[0], earth[level]};
    } else {
        return {air[0], air[level]};
    }
}

double pointToLineDistance(std::vector<int> P, std::vector<int> L1, std::vector<int> L2) {
    int A = P[0] - L1[0];
    int B = P[1] - L1[1];
    int C = L2[0] - L1[0];
    int D = L2[1] - L1[1];
    int dot = A * C + B * D;
    int squareLength = C * C + D * D;
    double param = -1;

    if (squareLength != 0) {
        param = static_cast<double>(dot) / squareLength;
    }

    std::vector<int> Q;

    if (param < 0) {
        Q = L1;
    } else if (param > 1) {
        Q = L2;
    } else {
        Q = {L1[0] + static_cast<int>(param * C), L1[1] + static_cast<int>(param * D)};
    }

    int dx = P[0] - Q[0];
    int dy = P[1] - Q[1];
    return sqrt(dx * dx + dy * dy);
}

int main() {
    int N;
    std::cin >> N;

    for (int _ = 0; _ < N; ++_) {
        int w, h, x0, y0;
        std::cin >> w >> h >> x0 >> y0;

        std::string magic;
        int level, cx, cy;
        std::cin >> magic >> level >> cx >> cy;

        std::vector<int> spellResult = spell(magic, level);
        int damage = spellResult[0];
        int radius = spellResult[1];

        std::vector<int> point1 = {x0, y0};
        std::vector<int> point2 = {x0 + w, y0};
        std::vector<int> point3 = {x0, y0 + h};
        std::vector<int> point4 = {x0 + w, y0 + h};

        if (x0 < cx && cx < point2[0] && y0 < cy && cy < point3[1]) {
            std::cout << damage << std::endl;
        } else {
            double distance1 = pointToLineDistance({cx, cy}, point1, point2);
            double distance2 = pointToLineDistance({cx, cy}, point1, point3);
            double distance3 = pointToLineDistance({cx, cy}, point4, point2);
            double distance4 = pointToLineDistance({cx, cy}, point4, point3);

            if (radius >= distance1 || radius >= distance2 || radius >= distance3 || radius >= distance4) {
                std::cout << damage << std::endl;
            } else {
                std::cout << 0 << std::endl;
            }
        }
    }

    return 0;
}
