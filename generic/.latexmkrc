# Direct all build artifacts (aux, log, bbl, pdf, ...) to the root build/
# directory. Source tree stays clean; `rm -rf build/` from repo root cleans
# every artifact across all venues.
$out_dir = '../build/generic';
$pdf_mode = 1;   # produce PDF via pdflatex

# Bibtex needs to find references.bib (at the repo root) regardless of any
# CWD shifts introduced by $out_dir. Prepend the absolute repo root to
# BIBINPUTS. The "::" inserts an empty element, which kpathsea interprets
# as "search the default texmf paths here too" -- without that, we would
# silently mask system .bib search paths.
#
# Do NOT touch BSTINPUTS. We use no custom .bst files; bibtex must reach
# system styles (e.g. plainnat.bst) via the default texmf tree.
use Cwd qw(abs_path);
my $repo_root = abs_path('..');
$ENV{'BIBINPUTS'} = "${repo_root}::" . ($ENV{'BIBINPUTS'} // '');
