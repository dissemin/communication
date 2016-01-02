Many repositories are not covered by dissemin because they do not provide
an [OAI-PMH](https://www.openarchives.org/pmh/) interface.
Here are some examples of missing
repositories:

 * [eprint.iacr.org](http://eprint.iacr.org/)
 * [SSRN](http://www.ssrn.com/en/)
 * [LingBuzz](http://ling.auf.net/lingbuzz)
 * [Semantics Archive](http://semanticsarchive.net/)
 * [ECCC](http://eccc.hpi-web.de/)
 * Many others, see the [Registry of Open Access
   Repositories](http://roar.eprints.org/) and [this ranking of
   repositories](http://repositories.webometrics.info/en/world)

One way to code a generic solution for all these repositories would
be to leverage the [Zotero scrapers](https://github.com/zotero/translators)
(with [translation-server](https://github.com/zotero/translation-server)), which
enable to scrape metadata out of HTML pages. Plugging that to a crawler
(focused on the target repositories) could already yield interesting results.

