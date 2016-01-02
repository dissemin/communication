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
-   [The docs](http://dev.dissem.in/doc);
-   [The API](api.html).

Getting help
------------

-   developers@dissem.in
-   \#openaccess IRC channel on irc.ulminfo.fr
-   via the [GitHub issues](https://github.com/wetneb/dissemin/issues)

Useful things you can do without diving into our code <a id="peripheral"></a>
----------------------------------------------------------------------

-   [Crawling](crawl.html): expand the sources of full texts dissemin has access to.

-   [Accessibility of cited papers](citations.html): instead of providing
    lists of papers authored by given researchers, compute the availability
    of **references** of a given paper.

-   [Adding links to the full text of references on Wikipedia](wikipedia.html): create a Wikipedia bot that adds links to open
    repositories.

-   Price on paywalls: Find a way to compute, for most DOIs, the price
    on the paywall (if there is one).
    This would enable us to tell users things like
    "Readers would need to pay 157 USD to access all your papers."

-   Improving Zotero: Ensure the [Zotero
    scrapers](https://github.com/zotero/translators) always return the abstract
    when available from the paywall. For instance, it is not the case
    for ACM yet, see e.g.
    [this article](http://dl.acm.org/citation.cfm?doid=2775051.2677003).

-   Alternate DOI proxy: Let's build an alternate DOI proxy, that
    redirects users to open repositories instead of paywalls. Something like
    [doi2oa](https://github.com/jezcope/doi2oa), but at a larger scale
    (with all the sources Dissemin has access to).

