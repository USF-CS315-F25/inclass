# inum-to-ascii

To create a new hex file for the inum-to-ascii circuit do the following:

1. Copy the Mnemonic column from your instruction decoder spreadsheet and paste into:

    `instructions.txt`

2. Use the `mkasciirom.py` script:

    ```
    cat instructions.txt | python mkasciirom.py > instructions.hex
    ```

3. Then load `instuctions.hex` into the ROM in `inum-to-ascii.dig` circuit.

    
