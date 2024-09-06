#!/bin/bash

# Check if command and subcommand are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <command> <subcommand>"
    exit 1
fi

command=$1
subcommand=$2

# Create the cmd directory if it doesn't exist
mkdir -p "cmd"

# Define the output file path
output_file="cmd/${command}_${subcommand}.go"

# Extract the relevant section from the spec doc
spec=$(sed -n "/### $command/,/###/p" specs/cli-spec.md | sed '$d')

# Prepare the prompt for cgpt
read -r -d '' prompt <<EOF
Given the following CLI specification for the '${command} ${subcommand}' command:

${spec}

Generate a Go script that implements this command using the Cobra library. The script should:
1. Define a function named '${command}${subcommand^}Cmd' that returns a *cobra.Command
2. Implement the appropriate flags and functionality as described in the spec
3. Use idiomatic Go code and follow best practices
4. Include necessary imports
5. Add comments explaining the code

Here's a template to start with:

\`\`\`go
package cmd

import (
    "github.com/spf13/cobra"
    "github.com/tmc/nvcf/api"
    "github.com/tmc/nvcf/config"
    "github.com/tmc/nvcf/output"
)

func ${command}${subcommand^}Cmd() *cobra.Command {
    cmd := &cobra.Command{
        Use:   "${subcommand}",
        Short: "[Add short description]",
        Long:  \`[Add long description]\`,
        RunE: func(cmd *cobra.Command, args []string) error {
            // Implement command logic here
            return nil
        },
    }

    // Add flags here

    return cmd
}
\`\`\`

Please complete this template with the appropriate implementation. Start your response with "\`\`\`go" and end it with "\`\`\`".
EOF

# Use cgpt to generate the Go script, using history file for input and output
cgpt -m "claude-3-5-sonnet-20240620" -I .hist-scaffold -O .hist-scaffold-gen -i "$prompt" | sed -n '/^```go$/,/^```$/p' | sed '1d;$d' > "$output_file"

echo "Generated ${output_file}"