Welcome to the root of the development of the
[Dissemin](http://dissem.in) platform.

Getting started
---------------

Want to help us build Dissemin? Great! Unless you want to tackle one of
our [peripheral (but critical) tasks](#peripheral), you will need access
to an instance to hack around. Skip the boring installation steps, just
[use the VM](http://dev.dissem.in/doc/vm.html)!

-   [The code on GitHub](https://github.com/wetneb/dissemin);
-   [The docs](http://dev.dissem.in/doc).

Getting help
------------

-   developers@dissem.in
-   \#openaccess IRC channel on irc.ulminfo.fr
-   via the [GitHub issues](https://github.com/wetneb/dissemin/issues)

Useful things you can do without diving into our code {\#\#peripheral}
----------------------------------------------------------------------

-   **Required skills: XML, social engineering.** Create an OAI-PMH
    wrapper for an important repository that do not provide such an
    interface. You can either try to convince the folks running the
    repository to do it, help them do it, or hack your own interface on
    the side (not very recommended). Here are some examples of missing
    repositories:
    -   [eprint.iacr.org](http://eprint.iacr.org/)
    -   [SSRN](http://www.ssrn.com/en/)
    -   [LingBuzz](http://ling.auf.net/lingbuzz)
    -   And many others, see the [Registry of Open Access
        Repositories](http://roar.eprints.org/) and [this ranking of
        repositories](http://repositories.webometrics.info/en/world)
-   **Required skills: JavaScript, XPath.** Ensure the [Zotero
    scrapers](https://github.com/zotero/translators) return the abstract
    when available from the paywall. For instance, it is not the case
    for ACM yet.
