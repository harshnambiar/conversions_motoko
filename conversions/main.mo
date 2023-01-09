import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Float "mo:base/Float";
import Debug "mo:base/Debug";
import Prim "mo:⛔";

actor {
    public func floatToNat(f: Float): async ?Nat{
        let f_text = Float.toText(f);
        
        var result: Nat = 0;
        for (char in f_text.chars()){
            switch char {
                case '-' {
                    return null;
                };
                case '0' {
                    result += 0;
                };
                case '1' {
                    result += 1;
                };
                case '2' {
                    result += 2;
                };
                case '3' {
                    result += 3;
                };
                case '4' {
                    result += 4;
                };
                case '5' {
                    result += 5;
                };
                case '6' {
                    result += 6;
                };
                case '7' {
                    result += 7;
                };
                case '8' {
                    result += 8;
                };
                case '9' {
                    result += 9;
                };
                case _ {
                    return ?result;
                };


            };
        };
        return ?result;
    };

    public func natToNat32(n: Nat): async ?Nat32 {
        if (n >= 2**32){
            return null;
        }
        else {
            return ?Prim.intToNat32Wrap(n);
        };
        return null;
    };

    public func natToNat8(n: Nat): async ?Nat8 {
        if (n >= 2**8){
            return null;
        }
        else {
            return ?Prim.intToNat8Wrap(n);
        };
        return null;
    };
};