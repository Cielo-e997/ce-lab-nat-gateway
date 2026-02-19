NAT Gateway and Routing Lab

Reflection Questions


Why is the NAT Gateway deployed in a public subnet and not in a private one?
The NAT Gateway has to be placed in a public subnet because it needs access to the Internet through an Internet Gateway. It uses an Elastic IP to send traffic to the Internet on behalf of the private instances.
If it were inside a private subnet, it would not have a direct route to the Internet, so it wouldn’t be able to forward traffic outside the VPC.

⸻

What happens if the NAT Gateway fails?

If the NAT Gateway stops working, the instances in the private subnet lose outbound Internet access.
They won’t be able to download updates, access external APIs, or reach public services.
However, communication inside the VPC would still work normally.

⸻

How much would it cost to run a NAT Gateway for a year with 200GB per month?

The NAT Gateway costs roughly $0.045 per hour and $0.045 per GB of data processed.
Running it for a full year would cost around $394 just in hourly charges.
With 200GB per month (which equals 2400GB per year), data processing would add around $108.
So in total, the yearly cost would be approximately $500, not including other data transfer fees.

⸻

Why can’t you SSH directly to the NAT Gateway’s public IP?

A NAT Gateway is not a virtual machine. It is a managed AWS networking service.
It doesn’t run an operating system and doesn’t accept SSH connections.
Its only job is to translate and forward outbound traffic.

⸻

What are the security benefits of using a NAT Gateway instead of giving instances public IPs?

Using a NAT Gateway keeps private instances completely isolated from direct Internet access.
They can go out to the Internet, but nothing from the Internet can initiate a connection back to them.
This reduces the attack surface and improves overall security.
