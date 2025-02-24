# SOPS-TF-AWS
SOPS, Terraform, AWS Secret  Manager &amp; AWS KMS integration

# Secrets

The  secrets are uploaded to secret manager, these secrets are intended to be sensitive values.

## Sops

In order to encrypt and decrypt secrets we are going to need sops tool, you can find the documentation about how to download it from here: https://github.com/getsops/sops

## Update secrets

To update a secret or upload a new one you need to execute the following command:

```bash
sops secrets/<environment>/secrets.enc.yaml
```

where `<environment>` is the name of the environment you are going to update the secret (dev/prod/staging), this command will open a text editor on your terminal with the secret decrypted and once you update the file it will encrypt the file again.

## Decrypt secret locally

If you just want to take a look at the secrets decrypted, just execute the following command:

```bash
sops -d secrets/<environment>/secrets.enc.yaml > secrets/<environment>/secrets.yaml.dec
```

This will create a decrypted file `secrets.yaml.dec` which is being ignored by git.

