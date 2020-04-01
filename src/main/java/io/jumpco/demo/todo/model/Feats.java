package io.jumpco.demo.todo.model;

public enum Feats {

    TASK("task"),
    BUG("bug"),
    FEATURE("feature"),
    ENHANCEMENT("enhancement"),
    MAINTANANCE("maintanance");

    private final String name;
      Feats(String name){

          this.name = name;
    }

    public String getName(){

          return name;
    }

}
