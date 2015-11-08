Welcome to the development root for the
[Dissemin](http://dissem.in) platform.

Getting started
---------------

We have a few important [satellite tasks](#peripheral) that can be taken care of
without exploring Dissemin's code. If you want to get started, they are probably
a better choice.

If you want to use or help us build Dissemin proper, though, you will need
access to an instance to hack around. Skip the boring installation steps, just
[use the VM](http://dev.dissem.in/doc/vm.html)!

-   [The code on GitHub](https://github.com/wetneb/dissemin);
-   [The docs](http://dev.dissem.in/doc).

Getting help
------------

-   developers@dissem.in
-   \#openaccess IRC channel on irc.ulminfo.fr
-   via the [GitHub issues](https://github.com/wetneb/dissemin/issues)

Useful things you can do without diving into our code <a id="peripheral"></a>
----------------------------------------------------------------------

-   **Required skills: XML, social engineering.** Create an OAI-PMH
    wrapper for an important repository that does not provide such an
    interface. You can either try to convince the folks running the
    repository to do it, help them do it, or hack your own interface on
    the side (not very recommended). Here are some examples of missing
    repositories:
    -   [eprint.iacr.org](http://eprint.iacr.org/)
    -   [SSRN](http://www.ssrn.com/en/)
    -   [LingBuzz](http://ling.auf.net/lingbuzz)
    -   [Semantics Archive](http://semanticsarchive.net/)
    -   [ECCC](http://eccc.hpi-web.de/)
    -   Many others, see the [Registry of Open Access
        Repositories](http://roar.eprints.org/) and [this ranking of
        repositories](http://repositories.webometrics.info/en/world)
    One way to code a generic solution for all these repositories would
    be to leverage the [Zotero scrapers](https://github.com/zotero/translators)
    (with [translation-server](https://github.com/zotero/translation-server)), which
    enable to scrape metadata out of HTML pages. Plugging that to a crawler
    (focused on the target repositories) could already yield interesting results.
-   **Required skills: Scraping.** Find a way to compute, for most DOIs, the price
    on the paywall (if there is one). This would enable us to tell users things like
    "Readers would need to pay 157 USD to access all your papers."
-   **Required skills: JavaScript, XPath.** Ensure the [Zotero
    scrapers](https://github.com/zotero/translators) always return the abstract
    when available from the paywall. For instance, it is not the case
    for ACM yet, see e.g.
    [this article](http://dl.acm.org/citation.cfm?doid=2775051.2677003).
-   **Required skills: web development.** Let's build an alternate DOI proxy, that
    redirects users to open repositories instead of paywalls. Something like
    [doi2oa](https://github.com/jezcope/doi2oa), but at a larger scale
    (with all the sources Dissemin has access to). This would be very useful for
    the project below. Repository: [doai](https://github.com/dissemin/doai).
-   **Required skills: Python.** Create a Wikipedia bot that adds links to open
    repositories. See [this project page on Wikipedia](https://en.wikipedia.org/wiki/Wikipedia:The_Wikipedia_Library/OABOT).
.

