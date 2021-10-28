---
title: Downloading software is more complicated than it should be
---

## What is signed, unsigned, or notarized software?

These days Windows and OS X love to hate you for downloading random software from the internet. They want you to use an app store, or only download software from people who paid them money to verify the developer's identity.

Yes, this is great for making sure you don't run random evil software on your computer, but it's a pain for us! People who make free software often don't want to jump through extra hoops to get in an app store or pay money to verify their identities. They made free software, so why are you going to ask anything else of them?

OS X is especially awful about this: when you download software from the internet, your computer might just **refuse to run it** when you double-click. On top of that, it doesn't suggest any way to get around that restriction!

**To force OS X to software it doesn't want to run, right-click (aka control+click) and select Open from the menu**. You'll see a popup that's *slightly* different than the rejection one - this one has an **Open** or **OK** button you can click, and then the software can run.

## Different kinds of releases

When you're a fancy technical person downloading fancy technical software, they force you to make decisions. While sometimes the option is easy - Python `3.8` is clearly better than `2.7`, sometimes it's a little more complex.

* **Stable** or **release** versions are the normal-person version of the software. You should probably download this one.
* **Pre-release**, **nightly** and **release candidate** (aka **RC**) are newer versions, but you think of them as "beta" versions - more features but less tested. You should generally steer clear of these, as you probably don't need the new features!
* **LTR** or **long-term release** versions are the most stable. They're usually for companies and IT people who are very grumpy and cautious about upgrades.

## Version numbers

Much software these days roughly follows something called **semantic versioning** or **SemVer**. When you see `3.8.10`, the order of the numbers is meaningful!

* `3` is the **major version number**. When the major version number goes up, insane things probably change. You really want to pay attention if you're upgrading across major version numbers.
* `8` is the **minor version number**. Going from `8` to `9` probably includes new features, but isn't a big overhaul.
* `10` is the **patch number**. It has all the same features, but bugs are fixed compared to the previous patch number.

For example, if you're using Python `3.10.0` you probably have good reason to be nervous: while it has cool new features compared to anything in the `3.9.x` series, the fact that the patch number is `0` means they haven't started fixing bugs yet!

> Well, kind of! Before `3.10.0` was released they had, for example, `3.10.0rc1`, which was the *release candidate* version of `3.10.0`. People more adventurous than us probably used it, found some bugs, and had them fixed before the *stable* version of `3.10.0` made it out into the world.