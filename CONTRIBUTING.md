Contributing
------------

[![Slack Chat](https://img.shields.io/badge/Chat-Slack-ff69b4.svg "Join us. Anyone is welcome!")](https://og-aws-slack.lexikon.io/)

Contributions of all kinds, including discussion, corrections, additions, and improvements, are welcome! We hope you'll join and help, in small ways or large. We gladly [credit](/AUTHORS.md) all contributors. Here are few notes before you jump in.

Please Help
-----------

If you’ve found this guide useful, please see if you can help (in increasing levels of commitment and expertise):

-	**Discussion:** The easiest thing you can do to contribute is [**join the Slack channel**](https://og-aws-slack.lexikon.io/) and ask or answer questions. As we discuss, see if it points to new things you or others can contribute to the Guide.
helps the community and guides what contributors can focus on.
-	**Focused pull requests:** [Pull requests](https://github.com/open-guides/og-aws/pulls) with focused changes like typos, specific tips, and corrections are always welcome and fast to review and merge in. Keep them small and focused, and *use multiple PRs for unrelated changes*. (See [writing conventions](#writing-conventions) below.)
-	**Track issues:** [File issues](https://github.com/open-guides/og-aws/issues) to aggregate ideas or links if it’s clear something needs to be improved, but it’s not possible to file a PR immediately.
-	**Major pull requests:** Take a look at areas [where we need help](https://github.com/open-guides/og-aws/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22). If you want to make a larger change, such as rewriting a lot of content, changing style, or adding a section, discussion in Slack is helpful and usually necessary. For new additions, we often create and edit the first draft in [Quip](https://quip.com/).
-	**Deeper expertise:** If you have deep expertise, let one of the project leads know if you’re interested in being an **editor** or an **expert**. Editors and experts are assigned roles that [help us review](#editorial-process) the Guide.

Review Process
--------------

### Pull Request Etiquette

-	Keep changes as small as is practical. Do not make changes to multiple sections at once, alter whitespace in broad ways, etc.
-	**Neutrality:** If you have an affiliation related to what you are changing, please mention it.
-	Please do your best to review current issues and pull requests to avoid duplication.

### Writing Style

-	**Link to references:** If you are adding an item, whenever possible, try to add a link or reference to relevant discussion or reference pages.
-	**Be brief:** Avoid long expository paragraphs; it’s better to link to a blog. (We are open to linking to your own blog, if it’s the best source.)
-	**Include opinions and common practice:** Thoughtful opinion is helpful. If there are multiple conventions or ideas on something held by experts, mention the different ones.
-	**Clarity:** Strive for consistency with conventions listed here, but clarity is most important.

### Pull Request Review

When creating a PR or reviewing one, it’s helpful to consider a few questions:

1.	Are relevant docs linked (AWS and third party blogs)?
2.	Can more details be added without lengthening it significantly?
3.	Can the same information be conveyed with more succinctly or more clearly?
4.	Copy editing: Does it match the [writing style](#writing-style) and [conventions](#writing-conventions) (including emoji symbols, punctuation, and grammar)?
5.	Are there any other parts of the guide that should be updated at the same time? (Examples are adding new sections to the table of contents, adding new internal links, rows to tables, etc.)
6.	Are there additional improvements that should be filed as issues?

### Editorial Process

-	Roles:
	-	**Project leads:** Own overall quality of the Guide, direction, and process.
	-	**Editors:** Contributors own specific sections or aspects of the Guide, reviewing PRs and/or writing. Requires expert knowledge.
	-	**Experts:** People with expert knowledge in various areas, who assist editors and have agreed to review or help on demand with tougher questions or PRs.
	-	**Contributors:** Everyone who contributes content or helps one way or another.
-	All PRs are reviewed by an **editor** and for non-trivial changes, a **project lead**, usually in that order, but it can be reversed for expediency.
-	In addition, anyone with relevant knowledge is encouraged to review/comment on PRs.
-	Both editors and project leads are responsible for checking for style or problems.
-	Trivial changes (including copy editing) may be merged in directly by project leads or editors.

Writing Conventions
-------------------

To keep a polished, consistent style we list a bunch of our conventions. Try to follow these and/or enforce them in reviews:

-	**Abbreviations:** For AWS service names, we use the abbreviation throughout the guide if it is more common, e.g. EC2 and not Elastic Compute Cloud. We also omit “Amazon” at the front of product names, e.g. EMR and not Amazon EMR. If an abbreviation is convenient but not always used, e.g. AZ instead of Availability Zone, either use the full term once per section/paragraph and abbreviate subsequent usages or do not abbreviate it at all.
-	Terms that appear for the first time in **boldface** are defined there in a brief summary, with a link if possible to what is probably the best page for that concept. It’s also fine to boldface **key statements** that guide the eye.
-	**Boldfaced headings:** When possible and appropriate, begin bulleted items with a boldfaced summary, as illustrated here. This helps the reader skim the contents.
-	**Links:**
	-	Related content that elaborates or gives more detail is included via standard inline hyperlinks within the text.
	-	References or citations backing some info that is already explained in the text is in [brackets] at the end of the item (with link for web pages, no link for books).
-	**Emoji icons:** These icons aid readability; use them whenever appropriate (usually at the start of bulleted items), as listed in the [**legend**](https://github.com/open-guides/og-aws#legend).
-	**Typographical conventions:**
	-	Use Unicode open and close quotes “like this” and not "like this".
	-	Use oriented apostrophes (Unicode’s, not ASCII's).
	-	Use em dashes — like this (not two hyphens -- like this).
-	**Section conventions:** When appropriate please add sections covering these items (where *X* = EC2, S3, etc.):
	-	*X Basics*: The elementary facts you should know if you don’t yet know anything about the service.
	-	*X Alternatives and Lock-In*: Should you be using this service or something else? Is the decision an important one that locks you in?
	-	*X Tips*: Everything you should know about the service, from big stuff to details.
	-	*X Gotchas and Limitations*: Common problems, large and small, as well as misconceptions and quirks.
	-	Not all sections need to follow the above conventions exactly.
	-	Note we try to make sections uniquely titled, so GitHub links to Markdown section anchors don’t collide and are stable.

Occasionally, we keep consistent formatting in Markdown via [markdownfmt](https://github.com/shurcooL/markdownfmt). (One of the project leads might run **admin/reformat.sh** to do this, but you can safely ignore that.)

Contact
-------

If you have concerns or additional ideas of ways to help, e-mail **og-aws@lexikon.io** or use Slack to contact the [project leads](AUTHORS.md).
