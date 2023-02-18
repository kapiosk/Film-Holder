//https://scandigital.com/pages/film-formats#:~:text=35mm%20Slides%20are%20individual%2035mm,wide)%20depending%20on%20the%20manufacturer
//35 - 36 x 24 mm
//H – 30.2 × 16.7 mm
//C – 25.1 × 16.7 mm
//P – 30.2 × 9.5 mm
baseX = 50.8;
baseY = 50.8;
windowX = 25.1;
windowY = 16.7;
baseThickness = 3;
magnetRadius = 2;
//ToDo: groove for film
filmX = 10;
filmY = 10;
filmThickness = 1.4;
filmOffset = 2;
difference(){
    translate([0, 0, 1])
        linear_extrude(baseThickness)
            square([baseX, baseY], true);
    linear_extrude(baseThickness + 2)
        square([windowX, windowY], true);
    union(){
        translate([0, baseY / 2 - magnetRadius * 2, 0])
            linear_extrude(baseThickness + 2)
                circle(magnetRadius, $fn=100);
        translate([0, - baseY / 2 + magnetRadius * 2, 0])
            linear_extrude(baseThickness + 2)
                circle(magnetRadius, $fn=100);
    }
}