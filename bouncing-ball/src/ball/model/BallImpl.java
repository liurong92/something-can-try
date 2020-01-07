package ball.model;

import ball.Ball;

import java.awt.*;
import java.util.ArrayList;

public class BallImpl implements Ball {
    protected int x;
    protected int y;
    protected int radius;
    private ArrayList<Behavior> behaviors = new ArrayList<>();

    protected BallImpl(int x, int y, int radius, ArrayList<Behavior> behaviors) {
        this.x = x;
        this.y = y;
        this.radius = radius;
        this.behaviors = behaviors;
    }

    protected BallImpl(int x, int y, ArrayList<Behavior> behaviors) {
        this(x, y, DEFAULT_RADIUS, behaviors);
    }

    @Override
    public int radius() {
        return radius;
    }

    @Override
    public Point center() {
        return new Point(x, y);
    }

    @Override
    public  void update(){
        for(Behavior behaviour : behaviors)
            behaviour.update(this);
    }

    @Override
    public void setY(int y){
        this.y = y;
    }

    @Override
    public void setRadius(int radius) {
        this.radius = radius;
    }

    @Override
    public int getY() {
        return y;
    }
}
