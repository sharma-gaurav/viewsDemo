package com.intelligrape
/**
 * Created by gaurav on 24/02/16.
 */
enum Gender {
    MALE('Male'), FEMALE('Female')

    String displayText

    Gender(String displayText) {
        this.displayText = displayText
    }
}