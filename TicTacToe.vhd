library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TicTacToe is
    Port ( CLK : in  STD_LOGIC;
			  VGA_CLOCK : out STD_LOGIC;
           RST : in  STD_LOGIC;
			  p1_button,p2_button : in STD_LOGIC;
			  PS2_CLK : in STD_LOGIC;
			  PS2_DAT : in STD_LOGIC;
			  move_left : in std_LOGIC;
			  move_right: in std_LOGIC;
			  move_up   : in std_LOGIC;
			  move_down : in std_logic;
           HSYNC : out  STD_LOGIC;
           VSYNC : out  STD_LOGIC;
           RGB : out  STD_LOGIC_VECTOR (2 downto 0)
			   
			  );
end TicTacToe;

architecture Behavioral of TicTacToe is
   component ps2_keyboard is
	GENERIC(
    clk_freq              : INTEGER := 50_000_000; --system clock frequency in Hz
    debounce_counter_size : INTEGER := 8);         --set such that (2^size)/clk_freq = 5us (size = 8 for 50MHz)
	PORT(
    clk          : IN  STD_LOGIC;                     --system clock
    ps2_clk      : IN  STD_LOGIC;                     --clock signal from PS/2 keyboard
    ps2_data     : IN  STD_LOGIC;                     --data signal from PS/2 keyboard
    ps2_code_new : OUT STD_LOGIC;                     --flag that new PS/2 code is available on ps2_code bus
    ps2_code     : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); 
	end component;
	
	signal clk25 : std_logic := '0';
	
	constant HD : integer := 639;  --  639   Horizontal Display (640)
	constant HFP : integer := 16;         --   16   Right border (front porch)
	constant HSP : integer := 96;       --   96   Sync pulse (Retrace)
	constant HBP : integer := 48;        --   48   Left boarder (back porch)
	
	constant VD : integer := 479;   --  479   Vertical Display (480)
	constant VFP : integer := 10;       	 --   10   Right border (front porch)
	constant VSP : integer := 2;				 --    2   Sync pulse (Retrace)
	constant VBP : integer := 33;       --   33   Left boarder (back porch)
	
	signal hPos : integer := 0;
	signal vPos : integer := 0;
	
	signal videoOn : std_logic := '0';
	
	signal player1x : integer:=1;
	signal player1y : integer:=1;
	
	signal ps2_code1 : std_logic_vector(7 downto 0);
	signal ps2_code_new1 : std_logic;
	
	signal  x,y  : integer;
	signal  A,B,C,D,E,F,G,H,I : integer := 0;
	signal button_counter : integer;
	signal winner : std_LOGIC_VECTOR(1 downto 0);
   
	
	impure function circle(rx, ry, x, y, r : integer) return std_logic is
	begin	
		if (rx - x)**2 + (ry - y)**2 < r*r then
			return '1';
		else
			return '0';
		end if;
	end circle;
	
	begin
		move: ps2_keyboard port map(
											clk => CLK,
											ps2_clk => PS2_CLK,
											ps2_data => PS2_DAT,
											ps2_code_new => ps2_code_new1,
											ps2_code => ps2_code1);
			 
clk_div:process(CLK)
begin
	if(CLK'event and CLK = '1')then
		clk25 <= not clk25;
	end if;
end process;

VGA_CLOCK <= clk25;

Horizontal_position_counter:process(clk25, RST)
begin
	if(RST = '1')then
		hpos <= 0;
	elsif(clk25'event and clk25 = '1')then
		if (hPos = (HD + HFP + HSP + HBP)) then
			hPos <= 0;
		else
			hPos <= hPos + 1;
		end if;
	end if;
end process;

Vertical_position_counter:process(clk25, RST, hPos)
begin
	if(RST = '1')then
		vPos <= 0;
	elsif(clk25'event and clk25 = '1')then
		if(hPos = (HD + HFP + HSP + HBP))then
			if (vPos = (VD + VFP + VSP + VBP)) then
				vPos <= 0;
			else
				vPos <= vPos + 1;
			end if;
		end if;
	end if;
end process;

Horizontal_Synchronisation:process(clk25, RST, hPos)
begin
	if(RST = '1')then
		HSYNC <= '0';
	elsif(clk25'event and clk25 = '1')then
		if((hPos <= (HD + HFP)) OR (hPos > HD + HFP + HSP))then
			HSYNC <= '1';
		else
			HSYNC <= '0';
		end if;
	end if;
end process;

Vertical_Synchronisation:process(clk25, RST, vPos)
begin
	if(RST = '1')then
		VSYNC <= '0';
	elsif(clk25'event and clk25 = '1')then
		if((vPos <= (VD + VFP)) OR (vPos > VD + VFP + VSP))then
			VSYNC <= '1';
		else
			VSYNC <= '0';
		end if;
	end if;
end process;

video_on:process(clk25, RST, hPos, vPos)
begin
	if(RST = '1')then
		videoOn <= '0';
	elsif(clk25'event and clk25 = '1')then
		if(hPos <= HD and vPos <= VD)then
			videoOn <= '1';
		else
			videoOn <= '0';
		end if;
	end if;
end process;


draw:process(clk25, RST, hPos, vPos, videoOn)
begin
	if(RST = '1')then
		RGB <= "111";
	elsif(clk25'event and clk25 = '1')then
		if(videoOn = '1')then
			if((hPos >= 120 and hPos <= 540) AND (vPos >= 30 and vPos <= 32))then
				RGB <= "000";
			elsif((hPos >= 120 and hPos <= 540) AND (vPos >= 72 and vPos <= 74))then
				RGB <= "000";
			elsif((hPos >= 120 and hPos <= 540) AND (vPos >= 114 and vPos <= 116))then
				RGB <= "000";
			elsif((hPos >= 120 and hPos <= 540) AND (vPos >= 156 and vPos <= 158))then
				RGB <= "000";
			elsif((hPos >= 120 and hPos <= 540) AND (vPos >= 198 and vPos <= 200))then
				RGB <= "000";
		   elsif((hPos >= 120 and hPos <= 540) AND (vPos >= 240 and vPos <= 242))then
				RGB <= "000";
			elsif((hPos >= 120 and hPos <= 540) AND (vPos >= 282 and vPos <= 284))then
				RGB <= "000";
			elsif((hPos >= 120 and hPos <= 540) AND (vPos >= 324 and vPos <= 326))then
				RGB <= "000";
			elsif((hPos >= 120 and hPos <= 540) AND (vPos >= 366 and vPos <= 368))then
				RGB <= "000";
			elsif((hPos >= 120 and hPos <= 540) AND (vPos >= 408 and vPos <= 410))then
				RGB <= "000";
			elsif((hPos >= 120 and hPos <= 540) AND (vPos >= 450 and vPos <= 452))then
				RGB <= "000";
			elsif((vPos >= 30 and vPos <= 452) AND (hPos >= 120 and hPos <= 122))then
				RGB <= "000";
			elsif((vPos >= 30 and vPos <= 452) AND (hPos >= 162 and hPos <= 164))then
				RGB <= "000";
			elsif((vPos >= 30 and vPos <= 452) AND (hPos >= 204 and hPos <= 206))then
				RGB <= "000";
			elsif((vPos >= 30 and vPos <= 452) AND (hPos >= 246 and hPos <= 248))then
				RGB <= "000";
			elsif((vPos >= 30 and vPos <= 452) AND (hPos >= 288 and hPos <= 290))then
				RGB <= "000";	
			elsif((vPos >= 30 and vPos <= 452) AND (hPos >= 330 and hPos <= 332))then
				RGB <= "000";	
			elsif((vPos >= 30 and vPos <= 452) AND (hPos >= 372 and hPos <= 374))then
				RGB <= "000";	
			elsif((vPos >= 30 and vPos <= 452) AND (hPos >= 414 and hPos <= 416))then
				RGB <= "000";
			elsif((vPos >= 30 and vPos <= 452) AND (hPos >= 456 and hPos <= 458))then
				RGB <= "000";
			elsif((vPos >= 30 and vPos <= 452) AND (hPos >= 498 and hPos <= 500))then
				RGB <= "000";
			elsif((vPos >= 30 and vPos <= 452) AND (hPos >= 540 and hPos <= 542))then
				RGB <= "000";
			elsif(circle(hpos, vpos, 142 + 42 * player1x, 52 + 42 * player1y, 20) = '1') then
				RGB <= "011";		
		   elsif A = 1 and (circle(hpos, vpos, 142 + 42 * 0, 52 + 42 * 0, 20) = '1')then
				RGB <= "011";
			elsif B = 1 and (circle(hpos, vpos, 142 + 42 * 0, 52 + 42 * 1, 20) = '1')then
				RGB <= "011";
			elsif C = 1 and (circle(hpos, vpos, 142 + 42 * 0, 52 + 42 * 2, 20) = '1')then
			   RGB <= "011";
			elsif D = 1 and (circle(hpos, vpos, 142 + 42 * 1, 52 + 42 * 0, 20) = '1')then
			   RGB <= "011";
			elsif E = 1 and (circle(hpos, vpos, 142 + 42 * 1, 52 + 42 * 1, 20) = '1')then
			   RGB <= "011";
			elsif F = 1 and (circle(hpos, vpos, 142 + 42 * 1, 52 + 42 * 2, 20) = '1')then
			   RGB <= "011";
			elsif G = 1 and (circle(hpos, vpos, 142 + 42 * 2, 52 + 42 * 0, 20) = '1')then
			   RGB <= "011";
			elsif H = 1 and (circle(hpos, vpos, 142 + 42 * 2, 52 + 42 * 1, 20) = '1')then
			   RGB <= "011";
			elsif I = 1 and (circle(hpos, vpos, 142 + 42 * 2, 52 + 42 * 2, 20) = '1')then
			   RGB <= "011";
			elsif A = 2 and (circle(hpos, vpos, 142 + 42 * 0, 52 + 42 * 0, 20) = '1')then
				RGB <= "010";
			elsif B = 2 and (circle(hpos, vpos, 142 + 42 * 0, 52 + 42 * 1, 20) = '1')then
				RGB <= "010";
			elsif C = 2 and (circle(hpos, vpos, 142 + 42 * 0, 52 + 42 * 2, 20) = '1')then
			   RGB <= "010";
			elsif D = 2 and (circle(hpos, vpos, 142 + 42 * 1, 52 + 42 * 0, 20) = '1')then
			   RGB <= "010";
			elsif E = 2 and (circle(hpos, vpos, 142 + 42 * 1, 52 + 42 * 1, 20) = '1')then
			   RGB <= "010";
			elsif F = 2 and (circle(hpos, vpos, 142 + 42 * 1, 52 + 42 * 2, 20) = '1')then
			   RGB <= "010";
			elsif G = 2 and (circle(hpos, vpos, 142 + 42 * 2, 52 + 42 * 0, 20) = '1')then
			   RGB <= "010";
			elsif H = 2 and (circle(hpos, vpos, 142 + 42 * 2, 52 + 42 * 1, 20) = '1')then
			   RGB <= "010";
			elsif I = 2 and (circle(hpos, vpos, 142 + 42 * 2, 52 + 42 * 2, 20) = '1')then
			   RGB <= "010";
			elsif winner = "01" and ((vPos >= 30 and vPos <= 452) AND (hPos >= 120 and hPos <= 540)) then
				RGB <= "011";
			elsif winner = "10" and ((vPos >= 30 and vPos <= 452) AND (hPos >= 120 and hPos <= 540)) then
				RGB <= "010";				
			else
				RGB <= "111";
			end if;
		else
			RGB <= "000";
		end if;
	end if;
end process;




process(CLK)
begin
			x <= player1x;
			y <= player1y;
		if x = 0 and y = 0  then
			if p2_button = '1'then
		      A <= 2;
			elsif p1_button = '1' then
				A <= 1;
			end if;
			x <= player1x;
			y <= player1y;
		elsif x = 0 and y = 1 then
			if p2_button = '1'then
		      B <= 2;
			elsif p1_button = '1' then
				B <= 1;
			end if;
			x <= player1x;
			y <= player1y;
		elsif x = 0 and y = 2 then
		   if p2_button = '1'then
		      C <= 2;
			elsif p1_button = '1' then
				C <= 1;
			end if;
			x <= player1x;
			y <= player1y;
		elsif x = 1 and y = 0 then
		   if p2_button = '1'then
		      D <= 2;
			elsif p1_button = '1' then
				D <= 1;
			end if;
			x <= player1x;
			y <= player1y;
		elsif x = 1 and y = 1 then
			if p2_button = '1'then
		      E <= 2;
			elsif p1_button = '1' then
				E <= 1;
			end if;
			x <= player1x;
			y <= player1y;
		elsif x = 1 and y = 2 then
			if p2_button = '1'then
		      F <= 2;
			elsif p1_button = '1' then
				F <= 1;
			end if;
			x <= player1x;
			y <= player1y;
		elsif x = 2 and y = 0 then
			if p2_button = '1'then
		      G <= 2;
			elsif p1_button = '1' then
				G <= 1;
			end if;
			x <= player1x;
			y <= player1y;
		elsif x = 2 and y = 1 then
			if p2_button = '1'then
		      H <= 2;
			elsif p1_button = '1' then
				H <= 1;
			end if;
			x <= player1x;
			y <= player1y;
		elsif x = 2 and y = 2 then
			if p2_button = '1'then
		      I <= 2;
			elsif p1_button = '1' then
				I <= 1;
			end if;
		end if;
		
	if (RST = '1') then
		A <= 0;
		B <= 0;
		C <= 0;
		D <= 0;
		E <= 0;
		F <= 0;
		G <= 0;
		H <= 0;
		I <= 0;
	end if;
	
		
end process;

process(ps2_code1,PS2_DAT)
begin
		
		
		if (ps2_code_new1'event and ps2_code_new1 = '1') then 
		
		if    player1x > 9 then
			   player1x <= 0;
		elsif player1x < 0 then
				player1x <= 9;
		end if;
		
		if    player1y > 9 then
			   player1y <= 0;
		elsif player1y < 0 then
				player1y <= 9;
		end if;
		
		if    ps2_code1 = x"23" then
				player1x <= player1x + 1; 
			
		elsif ps2_code1 = x"1C" then
				player1x <= player1x - 1;
				
		elsif ps2_code1 = x"1D" then
			   player1y <= player1y - 1;
				
		elsif ps2_code1 = x"1B" then
			   player1y <= player1y + 1;
		end if;
		
		if    player1x > 9 then
			   player1x <= 0;
		elsif player1x < 0 then
				player1x <= 9;
		end if;
		
		if    player1y > 9 then
			   player1y <= 0;
		elsif player1y < 0 then
				player1y <= 9;
		end if;
		
		end if;
end process;


process(ClK)
begin
		if    A = 1 and B = 1 and C = 1 then
			winner <= "01";
		elsif D = 1 and E = 1 and F = 1 then
			winner <= "01";
		elsif G = 1 and H = 1 and I = 1 then
			winner <= "01";
		elsif A = 1 and D = 1 and G = 1 then
			winner <= "01";
		elsif B = 1 and E = 1 and H = 1 then
			winner <= "01";
		elsif C = 1 and F = 1 and I = 1 then
			winner <= "01";
		elsif A = 1 and E = 1 and I = 1 then
			winner <= "01";
		elsif G = 1 and E = 1 and C = 1 then
			winner <= "01";
		end if;
		
		if A = 2 and B = 2 and C = 2 then
			winner <= "10";
		elsif D = 2 and E = 2 and F = 2 then
			winner <= "10";
		elsif G = 2 and H = 2 and I = 2 then
			winner <= "10";
		elsif A = 2 and D = 2 and G = 2 then
			winner <= "10";
		elsif B = 2 and E = 2 and H = 2 then
			winner <= "10";
		elsif C = 2 and F = 2 and I = 2 then
			winner <= "10";
		elsif A = 2 and E = 2 and I = 2 then
			winner <= "10";
		elsif G = 2 and E = 2 and C = 2 then
			winner <= "10";
		end if;	
		
		if RST = '1' then
		winner <= "00";
		end if;
		
end process;




end Behavioral;