---
title: "Daily"
description: "One sentence you can check, each weekday morning, with its reason under it."
---

# Daily

## One sentence you can check, each weekday morning, with its reason under it

Each of these is a sentence you can check, not one you are asked to believe. It is said in the first person because that is where it is true: *I am in*, *I am held*, *I am where meaning occurs*. Under each line is why it is true, in a sentence or two, none of them a hope; a fence, where one is needed, saying what the line does not mean; and one thing to carry into the day. The longer papers hold the reasons; where a daily and a paper disagree, the paper is right.

The first season is fourteen lines, October 26 to November 12, 2026. The papers named under each daily are from the working corpus; the ones already public are in [the papers](../README#read-in-this-order), and the rest follow in the order they are released.

{% assign dailies = site.daily | sort: "date" | reverse %}{% for d in dailies %}
- {{ d.date | date: "%B %-d" }} — [{{ d.title }}]({{ d.url | relative_url }}){% endfor %}

---

*Connection Theology is the work of John McIntire, written in conversation with OpenAI and Anthropic models. Each daily names the paper it is drawn from; which sentences are whose is recorded at the back of every paper.*
