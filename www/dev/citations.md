Dissemin assesses the availability of the publications authored by a given researcher.
What if we could assess the availability of the publications cited by a given paper?
[Open access publishers could use it to encourage authors cited in their journals to
release their papers](https://www.linkedin.com/pulse/accelerating-open-access-adoption-john-dove).

Goal
----

We need a system that takes an article, say in PDF format, and
returns its list of references, with their availability status
(similar to the lists of papers in dissemin).

Roadmap
-------

 * Extract references from an article
 * Look up the status of these publications via the dissemin API
 * Report the results

Reference extraction
--------------------

A PDF file contains lots of text, figures, and citations, most likely formatted in a human-readable way such as:

<pre>Becchi, C. (2012), BRS Symmetry, prehistory and history, in Pramana, p. 837-851</pre>

STEP 1: From that, we need to extract *structured* metadata, such as:

<pre>
   author = {{Becchi}, C.},
    title = "{BRS Symmetry, prehistory and history}",
  journal = {Pramana},
     year = 2012,
</pre>

There are many reference extraction systems out there:

 * [pdfextract](https://github.com/CrossRef/pdfextract)
 * [grobid](https://github.com/kermitt2/grobid)
 * [cb2bib](http://www.molspaces.com/cb2bib/)
 * [cermine](http://cermine.ceon.pl/index.html)

We need to pick one. They represent the citations in various formats, have different
speeds and accuracies, and so on.

Availability assessment
-----------------------

Then, we can use [the dissemin API](api.html) to evaluate the availability
of these papers. [libbmc](https://github.com/Phyks/libbmc/) can help to extract the
missing data (such as DOI identifiers) from the output of the citation extractor.

Results reporting
-----------------

A web-based UI would probably be the most convenient. But any web framework or
 programming language is welcome.


