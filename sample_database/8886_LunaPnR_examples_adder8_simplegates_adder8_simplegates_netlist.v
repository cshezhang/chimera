// This program was cloned from: https://github.com/asicsforthemasses/LunaPnR
// License: GNU General Public License v3.0

/* Generated by Yosys 0.16+63 (git sha1 UNKNOWN, gcc 11.2.0-19ubuntu1 -fPIC -Os) */

(* cells_not_processed =  1  *)
(* src = "adder8.v:1.1-5.10" *)
module adder8(\a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] , \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] , \y[0] , \y[1] , \y[2] , \y[3] , \y[4] 
, \y[5] , \y[6] , \y[7] );
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  (* src = "adder8.v:1.27-1.28" *)
  input \a[0] ;
  wire \a[0] ;
  (* src = "adder8.v:1.27-1.28" *)
  input \a[1] ;
  wire \a[1] ;
  (* src = "adder8.v:1.27-1.28" *)
  input \a[2] ;
  wire \a[2] ;
  (* src = "adder8.v:1.27-1.28" *)
  input \a[3] ;
  wire \a[3] ;
  (* src = "adder8.v:1.27-1.28" *)
  input \a[4] ;
  wire \a[4] ;
  (* src = "adder8.v:1.27-1.28" *)
  input \a[5] ;
  wire \a[5] ;
  (* src = "adder8.v:1.27-1.28" *)
  input \a[6] ;
  wire \a[6] ;
  (* src = "adder8.v:1.27-1.28" *)
  input \a[7] ;
  wire \a[7] ;
  (* src = "adder8.v:1.42-1.43" *)
  input \b[0] ;
  wire \b[0] ;
  (* src = "adder8.v:1.42-1.43" *)
  input \b[1] ;
  wire \b[1] ;
  (* src = "adder8.v:1.42-1.43" *)
  input \b[2] ;
  wire \b[2] ;
  (* src = "adder8.v:1.42-1.43" *)
  input \b[3] ;
  wire \b[3] ;
  (* src = "adder8.v:1.42-1.43" *)
  input \b[4] ;
  wire \b[4] ;
  (* src = "adder8.v:1.42-1.43" *)
  input \b[5] ;
  wire \b[5] ;
  (* src = "adder8.v:1.42-1.43" *)
  input \b[6] ;
  wire \b[6] ;
  (* src = "adder8.v:1.42-1.43" *)
  input \b[7] ;
  wire \b[7] ;
  (* src = "adder8.v:1.58-1.59" *)
  output \y[0] ;
  wire \y[0] ;
  (* src = "adder8.v:1.58-1.59" *)
  output \y[1] ;
  wire \y[1] ;
  (* src = "adder8.v:1.58-1.59" *)
  output \y[2] ;
  wire \y[2] ;
  (* src = "adder8.v:1.58-1.59" *)
  output \y[3] ;
  wire \y[3] ;
  (* src = "adder8.v:1.58-1.59" *)
  output \y[4] ;
  wire \y[4] ;
  (* src = "adder8.v:1.58-1.59" *)
  output \y[5] ;
  wire \y[5] ;
  (* src = "adder8.v:1.58-1.59" *)
  output \y[6] ;
  wire \y[6] ;
  (* src = "adder8.v:1.58-1.59" *)
  output \y[7] ;
  wire \y[7] ;
  AND2X1 _29_ (
    .A(\b[6] ),
    .B(\a[6] ),
    .Y(_00_)
  );
  NAND2X1 _30_ (
    .A(\b[6] ),
    .B(\a[6] ),
    .Y(_01_)
  );
  NAND2X1 _31_ (
    .A(\b[5] ),
    .B(\a[5] ),
    .Y(_02_)
  );
  AND2X1 _32_ (
    .A(\b[4] ),
    .B(\a[4] ),
    .Y(_03_)
  );
  NAND2X1 _33_ (
    .A(\b[4] ),
    .B(\a[4] ),
    .Y(_04_)
  );
  NAND2X1 _34_ (
    .A(\b[3] ),
    .B(\a[3] ),
    .Y(_05_)
  );
  AND2X1 _35_ (
    .A(\b[2] ),
    .B(\a[2] ),
    .Y(_06_)
  );
  NAND2X1 _36_ (
    .A(\b[2] ),
    .B(\a[2] ),
    .Y(_07_)
  );
  NAND2X1 _37_ (
    .A(\b[1] ),
    .B(\a[1] ),
    .Y(_08_)
  );
  NAND2X1 _38_ (
    .A(\b[0] ),
    .B(\a[0] ),
    .Y(_09_)
  );
  NOR2X1 _39_ (
    .A(\b[1] ),
    .B(\a[1] ),
    .Y(_10_)
  );
  XOR2X1 _40_ (
    .A(\b[1] ),
    .B(\a[1] ),
    .Y(_11_)
  );
  OAI21X1 _41_ (
    .A(_09_),
    .B(_10_),
    .C(_08_),
    .Y(_12_)
  );
  OR2X1 _42_ (
    .A(\b[2] ),
    .B(\a[2] ),
    .Y(_13_)
  );
  NAND2X1 _43_ (
    .A(_07_),
    .B(_13_),
    .Y(_14_)
  );
  AOI21X1 _44_ (
    .A(_12_),
    .B(_13_),
    .C(_06_),
    .Y(_15_)
  );
  NOR2X1 _45_ (
    .A(\b[3] ),
    .B(\a[3] ),
    .Y(_16_)
  );
  XOR2X1 _46_ (
    .A(\b[3] ),
    .B(\a[3] ),
    .Y(_17_)
  );
  OAI21X1 _47_ (
    .A(_15_),
    .B(_16_),
    .C(_05_),
    .Y(_18_)
  );
  OR2X1 _48_ (
    .A(\b[4] ),
    .B(\a[4] ),
    .Y(_19_)
  );
  NAND2X1 _49_ (
    .A(_04_),
    .B(_19_),
    .Y(_20_)
  );
  AOI21X1 _50_ (
    .A(_18_),
    .B(_19_),
    .C(_03_),
    .Y(_21_)
  );
  NOR2X1 _51_ (
    .A(\b[5] ),
    .B(\a[5] ),
    .Y(_22_)
  );
  XOR2X1 _52_ (
    .A(\b[5] ),
    .B(\a[5] ),
    .Y(_23_)
  );
  OAI21X1 _53_ (
    .A(_21_),
    .B(_22_),
    .C(_02_),
    .Y(_24_)
  );
  OR2X1 _54_ (
    .A(\b[6] ),
    .B(\a[6] ),
    .Y(_25_)
  );
  NAND2X1 _55_ (
    .A(_01_),
    .B(_25_),
    .Y(_26_)
  );
  AOI21X1 _56_ (
    .A(_24_),
    .B(_25_),
    .C(_00_),
    .Y(_27_)
  );
  XOR2X1 _57_ (
    .A(\b[7] ),
    .B(\a[7] ),
    .Y(_28_)
  );
  XNOR2X1 _58_ (
    .A(_27_),
    .B(_28_),
    .Y(\y[7] )
  );
  XNOR2X1 _59_ (
    .A(_24_),
    .B(_26_),
    .Y(\y[6] )
  );
  XNOR2X1 _60_ (
    .A(_21_),
    .B(_23_),
    .Y(\y[5] )
  );
  XNOR2X1 _61_ (
    .A(_18_),
    .B(_20_),
    .Y(\y[4] )
  );
  XNOR2X1 _62_ (
    .A(_15_),
    .B(_17_),
    .Y(\y[3] )
  );
  XNOR2X1 _63_ (
    .A(_12_),
    .B(_14_),
    .Y(\y[2] )
  );
  XNOR2X1 _64_ (
    .A(_09_),
    .B(_11_),
    .Y(\y[1] )
  );
  XOR2X1 _65_ (
    .A(\b[0] ),
    .B(\a[0] ),
    .Y(\y[0] )
  );
endmodule
