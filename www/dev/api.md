Dissemin API
============

Dissemin provides an API to query the availability of arbitrary papers.
For now it is a BETA VERSION.

How to use it
-------------

Papers can be queried by DOI. Say you want to get the status of the paper
with DOI "10.1016/j.paid.2009.02.013":

<pre>
    http://beta.dissem.in/api/10.1016/j.paid.2009.02.013
</pre>

You get back a representation of the metadata for this paper:

<pre>
{
  "status": "ok",
  "paper": {
    "title": "Refining the conceptualization of a future-oriented self-regulatory behavior: Proactive coping",
    "pdf_url": "http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2705166",
    "records": [
      {
        "splash_url": "http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2705166",
        "contributors": "",
        "abstract": "Proactive coping, directed at an upcoming as opposed to an ongoing stressor, is a new focus in positive psychology research. However, two differing conceptualizations of this construct create confusion. This study compared how each operationalization of proactive coping relates to well-being. Participants (N = 281) facing an upcoming college examination completed the Proactive Coping Inventory (PCI; consisting of two subscales that each assess one of the conceptualizations), the Proactive Competence Scale (PCS; that assesses the proactive coping process), and measures of well-being. The results demonstrated that conceptualizing proactive coping as a positively-focused striving for goals was predictive of well-being (the shared variance from affect, subjective well-being and physical symptoms), whereas conceptualizing proactive coping as focused on preventing a negative future was not. The first conceptualization of proactive coping’s unique association with well-being was explained by two of the proactive competencies, use of resources and realistic goal setting, and the remaining variance in well-being was explained by the first factor of optimism. These results demonstrated that aspiring for a positive future is distinctly predictive of well-being and that research should focus on accumulating resources and goal setting in designing interventions to promote proactive coping.",
        "pdf_url": "http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2705166",
        "source": "base",
        "keywords": "Article",
        "identifier": "ftpubmed:oai:pubmedcentral.nih.gov:2705166",
        "type": ""
      }
    ],
    "publications": [
      {
        "publisher": "Elsevier BV",
        "doi": "10.1016/j.paid.2009.02.013",
        "container": null,
        "issue": "2",
        "journal": "Personality and Individual Differences",
        "issn": "0191-8869",
        "abstract": null,
        "volume": "47",
        "pdf_url": null,
        "policy": {
          "romeo_id": "30",
          "preprint": "can",
          "postprint": "can",
          "published": "cannot"
        },
        "type": "journal-article",
        "pages": "139-144"
      }
    ],
    "authors": [
      {
        "orcid": null,
        "affiliation": null,
        "name": {
          "last": "Sohl",
          "first": "Stephanie Jean"
        }
      },
      {
        "orcid": null,
        "affiliation": null,
        "name": {
          "last": "Moyer",
          "first": "Anne"
        }
      }
    ],
    "date": "2009-07-01",
    "type": "journal-article"
  }
}
</pre>


Metadata format
---------------

Most fields are self-explanatory, here is a quick description of the other ones:

 * ***pdf\_url*** is the URL where dissemin thinks the full text can be accessed for free. This is rarely a direct link to an actual PDF file. It is set to `null` if we could not find a free source for this paper.
 * ***publications*** gives a list of the places where this paper has been published (so: journals, conferences), and the associated bibliographical metadata. If the publisher has been found in RoMEO, it also indicates the summary of its policy, using the codes drawn from [the RoMEO API](http://www.sherpa.ac.uk/romeo/api.html).
 * ***records*** gives a list of the places where the full text has been made available (so: repositories, homepages or social networks). Sometimes, these repositories only contain a bibliographical record and not the full text. The ***pdf_url*** field of each record indicates our assessment of the availability of that record.

