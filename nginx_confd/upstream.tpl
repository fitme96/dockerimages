        upstream csphere {
        {{range ls "/lb/backends/csphere-csphere/ips/" }}
        server {{.}}:80;
        {{end}}

    }
