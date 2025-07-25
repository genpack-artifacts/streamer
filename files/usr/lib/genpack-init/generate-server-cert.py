import os,subprocess,logging

def configure(ini):
    os.makedirs("/etc/ssl/apache2", exist_ok=True)
    subprocess.run(["private-ca-tool", "generate-server-cert", 
                    "--overwrite", 
                    "--server-key", "/etc/ssl/apache2/server.key",
                    "--server-cert", "/etc/ssl/apache2/server.crt",
                    "localhost"], check=True)

    logging.info("Generated server certificate for Apache in /etc/ssl/apache2")