

import re


new = ""
with open("xrechnung-html_extratitle.xsl", "w") as fileout:
    with open('xrechnung-html.xsl', 'r') as file:
        for line in file:
            if "data-title" in line:
                #print(line)
                
                # Define the regex pattern as a raw string
                pattern_str = r'data-title="B[T,R,G]-\d+"'

                # Compile the pattern into a pattern object
                pattern = re.compile(pattern_str)
                matches = pattern.findall(line)
                if (len(matches) > 0):
                    #print("    ", matches) # Output: 'Jessa_knows_testing_and_machine_learning'
                    newline = line.replace(matches[0], matches[0]+" "+matches[0].replace("data-title", "title"))
                    fileout.write(newline)
                else:
                    # Define the regex pattern as a raw string
                    pattern_str = r'data-title="B[T,R,G]-\d+-scheme-id"' 
                    # Compile the pattern into a pattern object
                    pattern = re.compile(pattern_str)
                    matches = pattern.findall(line)
                    if (len(matches) > 0):
                        newline = line.replace(matches[0], matches[0]+" "+matches[0].replace("data-title", "title"))
                        fileout.write(newline)
                    else:
                        # Define the regex pattern as a raw string
                        pattern_str = r'data-title="B[T,R,G]-\d+-scheme-version-id"'
                        # Compile the pattern into a pattern object
                        pattern = re.compile(pattern_str)
                        matches = pattern.findall(line)
                        if (len(matches) > 0):
                            newline = line.replace(matches[0], matches[0]+" "+matches[0].replace("data-title", "title"))
                            fileout.write(newline)
                        else:  
                            # Define the regex pattern as a raw string
                            pattern_str = r'data-title="B[T,R,G]-DEX-\d+"'

                            # Compile the pattern into a pattern object
                            pattern = re.compile(pattern_str)
                            matches = pattern.findall(line)
                            if (len(matches) > 0):
                                #print("    ", matches) # Output: 'Jessa_knows_testing_and_machine_learning'
                                newline = line.replace(matches[0], matches[0]+" "+matches[0].replace("data-title", "title"))
                                fileout.write(newline)
                            else:                            
                                fileout.write(line)
            else:
                    fileout.write(line)
                
            #print(line, end='')
		
		
		