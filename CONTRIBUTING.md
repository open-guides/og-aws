Contributing
------------

Contributions of all kinds, including discussion, corrections, additions, and improvements, are welcome! We hope you'll join and help, in small ways or large. We gladly credit all contributors and authors. Here are few notes before you jump in.

[![Slack Chat](https://img.shields.io/badge/Chat-Slack-ff69b4.svg "Join us. Anyone is welcome!")](https://og-aws.slack.lexikon.io/) [![Ask a Question](https://img.shields.io/badge/%3f-Ask%20a%20Question-dc9d47.svg "Questions help improve the Guide")](https://airtable.com/shrXZ61VrovWfXYBg)

The simplest thing you can do to contribute is [**join the Slack channel**](https://og-aws.slack.lexikon.io/) or [**add to our list of common questions**](https://airtable.com/shrXZ61VrovWfXYBg), which help guide us in ways to improve the guide.

[**File issues**](https://github.com/open-guides/og-aws/issues) if it’s clear what needs to be improved. (For less well-defined issues, discussing first on Slack may be helpful.)

[**Pull requests**](https://github.com/open-guides/og-aws/pulls) with changes are even better. Please keep them small and focused, so we can add items individually, and review the conventions below. (Again, Slack discussion can help.)

Please review current issues and pull requests to avoid duplication.

We gladly [credit](/AUTHORS.md) all contributors.

Finally, if an issue isn’t appropriate, or if you might have skills and inclination to help improve the guide in a more substantial way, please shoot an e-mail to [@jlevy](https://github.com/jlevy).

### Style

- **Use references:** If you are adding an item, whenever possible, try to add a link or reference to relevant discussion or reference pages.
- **Be brief:** Avoid long expository paragraphs; it’s better to link to a blog. (We are open to linking to your own blog, if it’s the best source.)
- **Include opinions and common practice:** Thoughtful opinion is helpful. If there are multiple conventions or ideas on something held by experts, mention the different ones.
- **Clarity:** Strive for consistency with conventions listed here, but clarity is most important.

### Conventions

When you contribute, keep in mind these conventions:

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

Note we keep consistent formatting in Markdown via [markdownfmt](https://github.com/shurcooL/markdownfmt). We run **admin/reformat.sh** to do this, but you don’t have to worry about it unless you really want to.
