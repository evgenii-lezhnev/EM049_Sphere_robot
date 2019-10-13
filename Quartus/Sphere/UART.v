module UART(i_clk,i_RX_Serial,o_TX_Serial);
parameter ClksInByte = 195;
input								i_clk;
input								i_RX_Serial;
output							o_TX_Serial;


wire								o_RX_DV;
wire [7:0]						o_RX_Byte;
wire								o_TX_Active;
wire								o_TX_Done;
wire								o_Front_Done;
UART_RX #(ClksInByte) REC(
.i_Clock(i_clk),
.i_RX_Serial(i_RX_Serial),
.o_RX_DV(o_RX_DV),
.o_RX_Byte(o_RX_Byte)
);

UART_TX #(ClksInByte) TRANS(
.i_Clock(i_clk),
.i_TX_DV(o_RX_DV),
.i_TX_Byte(o_RX_Byte),
.o_TX_Active(o_TX_Active),
.o_TX_Serial(o_TX_Serial),
.o_TX_Done(o_TX_Done),
.o_Front_Done(o_Front_Done)
);
endmodule
