# What is kanata?

(Kanata)[https://github.com/jtroo/kanata/tree/v1.7.0] is a keyboard remapper that is available on Linux, MacOS and Windows.
It allows us to change the behaviour of our keyboards by remapping the keys and surcharge them with different behaviours.

# Installation

Just run the `install.sh` script with sudo privileges, it will:

1. Download kanata v1.7.0 into your system
2. Copy the cofigurations file to `/etc/kanata.kbd`
3. Create the kanata service
4. Start the service so you can use kanata right away.
5. Enable the service so kanata run at startup


# Usage:

We will be using Kanata to surcharge our home row keys in order to make typing and reaching far keys easier.
The following keys will be remapped on hold as follows:

- a: press => a | hold => Left Super
- s: press => s | hold => Left Alt
- d: press => d | hold => Left Shift
- f: press => f | hold => Left Control
- j: press => j | hold => Right Control
- k: press => k | hold => Right Shift
- l: press => l | hold => Right Alt
- ;: press => ; | hold => Right Super

P.S: If you want to press a certain key multiple times (e.g. pressing j 100 times to scroll 100 lines in vim) you can
double tap hold 'j', to repeat it many times.

