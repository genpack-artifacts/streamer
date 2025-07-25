import subprocess,logging

def configure(ini):
    subprocess.run(["private-ca-tool", "create"], check=True)
    logging.info("Created private CA using private-ca-tool. Trust it by running 'private-ca-tool trust'.")