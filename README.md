# digitalocean-agent

This cookbook installs the [DigitalOcean](https://www.digitalocean.com) 'advanced metrics' service, also known as 'do-agent'.

For more information about the agent, see [DigitalOcean's announcement blog post](https://blog.digitalocean.com/improved-graphs/) and [their documentation](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-the-digitalocean-agent-for-monitoring).

This cookbook should work on every platform the DO agent supports (debian, ubuntu, centos, rhel, fedora).

It is tested against Chef 14, but should not contain anything that would keep it from working with Chef 13 (or 12, though compatibility there is purely accidental).
