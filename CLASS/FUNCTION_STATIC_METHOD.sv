
class MyClass;
    static function void myStaticMethod();
        $display("This is a static method.");
    endfunction

    
    static function void callStaticMethod();
        myStaticMethod(); 
    endfunction

endclass

module test;
    initial begin
        MyClass::myStaticMethod();
        MyClass::callStaticMethod();
    end
endmodule
