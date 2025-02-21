// This program was cloned from: https://github.com/umar-afzaal/ReCkt
// License: MIT License

// This file contains a pareto-optimal circuit with respect to area and the fault-resilince parameter p_fault which is defined as:
// "For all input vectors, the ratio of the no. of faults observable at the POs to the no. of total possible faults in the circuit".
// This code is part of the ReCkt library (https://github.com/umar-afzaal/ReCkt) distributed under The MIT License.
// When used, please cite the following article(s):
// U. Afzaal, A.S. Hassan, M. Usman and J.A. Lee, "On the Evolutionary Synthesis of Increased Fault-resilience Arithmetic Circuits".

// p_fault = 97.0 %    (Lower is better)
// gates = 45.0
// levels = 15
// area = 55.64    (For MCNC library relative to nand2)
// power = 282.2 uW    (Berkely-SIS for MCNC library @ Vdd=5V and 20 MHz clock)
// delay = 15.9 ns    (Berkely-ABC for MCNC library)
// PDP = 4.48698e-12 J

// Pin mapping:
// {n0, n1, n2, n3, n4, n5, n6, n7} = A[7:0]
// {n8, n9, n10, n11, n12, n13, n14, n15} = B[7:0]
// {n60, n58, n56, n52, n50, n47, n43, n42, n20} = O[8:0]

module addr8u_area_20 (
n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, 
n60, n58, n56, n52, n50, n47, n43, n42, n20
);

input n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
output n60, n58, n56, n52, n50, n47, n43, n42, n20;
wire n30, n24, n46, n18, n49, n17, n59, n51, n45, n36, n37, n23, n16, n53, n40, n48, n21, n25, n41, n54, 
n27, n33, n28, n22, n38, n39, n57, n31, n19, n44, n34, n32, n26, n29, n35, n55;

nand (n16, n13, n5);
nand (n17, n8, n0);
or (n18, n12, n4);
nand (n19, n6, n6);
xor (n20, n15, n7);
nand (n21, n14, n14);
or (n22, n13, n5);
nand (n23, n9, n1);
nand (n24, n12, n4);
xor (n25, n11, n3);
or (n26, n10, n2);
nor (n27, n9, n1);
nand (n28, n14, n6);
nand (n29, n15, n7);
nand (n30, n10, n2);
nand (n31, n11, n3);
xor (n32, n8, n0);
nand (n33, n27, n27);
nand (n34, n28, n29);
nand (n35, n21, n19);
nand (n36, n16, n22);
nand (n37, n24, n18);
nand (n38, n30, n26);
nand (n39, n34, n35);
nand (n40, n23, n33);
nand (n41, n28, n35);
xor (n42, n41, n29);
xor (n43, n39, n36);
nand (n44, n39, n16);
nand (n45, n44, n22);
nand (n46, n45, n24);
xor (n47, n45, n37);
and (n48, n46, n18);
nand (n49, n48, n25);
xor (n50, n48, n25);
nand (n51, n49, n31);
xnor (n52, n38, n51);
nand (n53, n26, n51);
nand (n54, n53, n30);
nand (n55, n54, n33);
xnor (n56, n54, n40);
nand (n57, n55, n23);
xor (n58, n57, n32);
nand (n59, n57, n32);
nand (n60, n59, n17);

endmodule