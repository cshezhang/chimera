//##############################################################################################################
//##############################################################################################################
//##############################################################################################################
//###                         Copyright 2022~2023 Wilson Chen                                                ###
//###            Licensed under the Apache License, Version 2.0 (the "License");                             ###
//###            You may not use this file except in compliance with the License.                            ###
//###            You may obtain a copy of the License at                                                     ###
//###                    http://www.apache.org/licenses/LICENSE-2.0                                          ###
//###            Unless required by applicable law or agreed to in writing, software                         ###
//###            distributed under the License is distributed on an "AS IS" BASIS,                           ###
//###            WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.                    ###
//###            See the License for the specific language governing permissions and                         ###
//###            limitations under the License.                                                              ###
//##############################################################################################################
//##############################################################################################################
//##############################################################################################################

//================================================================================================
//======= this is internal design for Rst ===============
//================================================================================================
//// default module name is : Rst_Gen

module <:$mod_name:>
(
  input  wire                    <:$clk:>,
  input  wire                    <:$rst_in:>,
  
  // You need to change ports to your specific design
  input  wire                    <:$en:>,

  output wire                    <:$rst_out:>   
);

<:
	if ($en ) {
		$OUT .= " // Please add Enable Control logic here";
	}

	if ($test ) {
		$OUT .= " // Please add Test OCC_CLK Control logic here";
	}
:>



//=======================================================================================================================
// Please add your implement logic below ,
// Please add any cfg parameter in _Cfg.json, and used in code as a variabe of  {$var}
//=======================================================================================================================


endmodule
