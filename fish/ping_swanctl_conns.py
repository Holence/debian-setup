# Usage: sudo python3 ping_conns.py

from multiprocessing import Pool
import subprocess
import re

Name = str
Addr = str
Latency = float
Record = tuple[Name, Addr]
Result = tuple[Latency, Name]


def ping(r: Record) -> Result:
    cmd = f"""ping {r[1]} -c1 -w1 | awk -F'[/ ]' 'END{{if ($8 == "") print "1000"; else print $8}}'"""
    return Latency(subprocess.check_output(cmd, shell=True, text=True)), r[0]


if __name__ == "__main__":
    # require root
    listconn = subprocess.check_output("swanctl --list-conn", shell=True, text=True)
    names = re.findall("^([\\S]+): ", listconn, flags=re.MULTILINE)
    addrs = re.findall("^  remote: ([\\d\\.]+)", listconn, flags=re.MULTILINE)

    records = [
        i for i in zip(names, addrs) if i[0] != "nord"
    ]

    with Pool(4) as p:
        results = p.map(ping, records)

    results.sort()
    for res in results:
        print(f"{res[1]:10s} {int(res[0])}ms")
