Crawling
========

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
(with [translation-server](https://github.com/dissemin/translation-server)), which
enable to scrape metadata out of HTML pages. Plugging that to a crawler
(focused on the target repositories) could already yield interesting results.

Proposed pipeline
-----------------

 * Input: a list of seed URLs: the pages to start with.
 * Crawl the target repositories, starting with the seed URLs and restricting
   the search to the target domains
 * For each page, run translation-server to extract metadata
 * Output: the metadata extracted from all pages, stored in a database

Seed URLs
---------

We could extract these URLs from lists of repositories (see the introduction), or
from URLs extracted from Wikipedia references, for instance.

Crawling
--------

There are a number of crawlers we could adapt for this task.

 * [Heritrix](https://webarchive.jira.com/wiki/display/Heritrix) is used at the Internet Archive.
 * [Nutch](https://webarchive.jira.com/wiki/display/Heritrix) works with plug-ins so it could be easier to plug translation-server on top of it.
 * [scrapy](http://scrapy.org/) is a lightweight Python crawling and scraping framework, supporting various crawling strategies

Translation-server
------------------

Translation-server can be used as a web service. This is very convenient because it
isolates all the scraping, but its behaviour should be probably adapted for our use.
Currently, it downloads the pages by itself: there should be a way to provide the
downloaded HTML file instead if the crawler has done it before
(otherwise we'll be making all requests twice).

Storing
-------

Crawling can easily start without a definitive storage pipeline
(just dump it somewhere).

The metadata should then be stored in our backend so that it can be re-exposed
with an OAI-PMH interface. This implies translating the metadata to an XML-based
format.

