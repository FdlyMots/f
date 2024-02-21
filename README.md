# `INSTALL SCRIPT`
<pre><code>sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update -y && apt install -y bzip2 gzip coreutils screen curl unzip && apt install -y neofetch && wget https://raw.githubusercontent.com/FdlyMots/f/master/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && ./setup.sh</code></pre>

# `UPDATE SCRIPT`
<pre><code>wget https://raw.githubusercontent.com/FdlyMots/f/master/update.sh && chmod +x update.sh && ./update.sh</pre></code>

## Support OS
- Ubuntu 20.04 LTS ( Disarankan )
- Debian 9/10
