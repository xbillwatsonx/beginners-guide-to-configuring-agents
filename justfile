# Beginner's Guide to Configuring Agents repo tasks

default:
    just --list

# Show available repo commands.
help:
    just --list

# Show the short command menu.
menu:
    just --list

# Quick context check for agents before editing.
agent-preflight:
    @echo "Repo: beginners-guide-to-configuring-agents"
    @git status --short
    @find . -maxdepth 2 -type f -name '*.md' | sort | wc -l | awk '{print "Markdown files: " $1}'

# Verify links, whitespace, and obvious public-content risks.
agent-verify:
    @git diff --check
    @if find . -type f -name '*.md' -print0 | xargs -0 grep -nE 'AKIA|sk-[A-Za-z0-9]|BEGIN (RSA|OPENSSH) PRIVATE KEY|password *=|api[_-]?key *='; then echo "Potential secret-like text found"; exit 1; fi
    @test -d 07-creators
    @test -d templates
    @test -f templates/AGENTS-template.md
    @test -f templates/SOUL-template.md
    @test -f templates/USER-template.md
    @test -f templates/MEMORY-template.md

# Show current repo status.
agent-status:
    @git status --short
    @git log --oneline -5
