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

# Verify local Markdown links, whitespace, and obvious public-content risks.
agent-verify:
    @git diff --check
    @just check-links
    @if find . -type f -name '*.md' -print0 | xargs -0 grep -nE 'AKIA|sk-[A-Za-z0-9]|BEGIN (RSA|OPENSSH) PRIVATE KEY|password *=|api[_-]?key *='; then echo "Potential secret-like text found"; exit 1; fi
    @test -d 07-creators
    @test -d templates
    @test -f templates/AGENTS-template.md
    @test -f templates/SOUL-template.md
    @test -f templates/USER-template.md
    @test -f templates/MEMORY-template.md

# Verify local Markdown links without external dependencies.
check-links:
    #!/usr/bin/env python3
    import pathlib
    import re
    import sys
    from urllib.parse import unquote

    root = pathlib.Path(".").resolve()
    pattern = re.compile(r'(?<!!)\[[^\]]+\]\(([^)]+)\)')
    failures = []

    for path in sorted(root.rglob("*.md")):
        if ".git" in path.parts:
            continue
        text = path.read_text(encoding="utf-8")
        for match in pattern.finditer(text):
            target = match.group(1).strip()
            if not target or target.startswith(("#", "http://", "https://", "mailto:")):
                continue
            if "://" in target:
                continue
            target = target.split("#", 1)[0].strip()
            if not target:
                continue
            target_path = (path.parent / unquote(target)).resolve()
            try:
                target_path.relative_to(root)
            except ValueError:
                failures.append(f"{path.relative_to(root)}: link escapes repo: {match.group(1)}")
                continue
            if not target_path.exists():
                failures.append(f"{path.relative_to(root)}: missing link target: {match.group(1)}")

    if failures:
        print("Broken local Markdown links:")
        for failure in failures:
            print(f"- {failure}")
        sys.exit(1)

    print("Local Markdown links OK")

# Show current repo status.
agent-status:
    @git status --short
    @git log --oneline -5
