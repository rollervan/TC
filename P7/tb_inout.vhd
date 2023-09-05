library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;

entity tb_inout is
end tb_inout;

architecture Behavioral of tb_inout is
    component combinational is
        Port ( A : in  STD_LOGIC_VECTOR(2 downto 0);
               Y : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;
    signal A, Y : STD_LOGIC_VECTOR(2 downto 0);
begin
    DUT : combinational port map(A => A, Y => Y);

    process
        file infile, outfile : text;
        variable fstatus : file_open_status;
        variable r_line, w_line : line;
        variable input_data : std_logic_vector(2 downto 0);
    begin
        -- Open Files
        file_open(fstatus, infile, "C:\my_path\inputs.txt", read_mode);
        file_open(fstatus, outfile, "C:\my_path\output.txt", write_mode);
        
        -- Read and Write
        while not endfile(infile) loop
            -- Read Line and Generate Input Signals
            readline(infile, r_line);
            read(r_line, input_data);
            A <= input_data;
            wait for 10ns;
            -- Write Output in File
            write(w_line, Y);
            writeline(outfile, w_line);
        end loop;
        
        -- Close Files
        file_close(infile);
        file_close(outfile);
        wait;
    end process;
end Behavioral;
