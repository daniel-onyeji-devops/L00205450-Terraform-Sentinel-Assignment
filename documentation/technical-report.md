# Technical Report – Terraform Digital Sovereignty

**Student:** Daniel Onyeji  
**Student ID:** L00205450

## Overview

This assignment involved using Terraform and HashiCorp Sentinel to improve cloud security and support digital sovereignty in Ireland.

I created six Sentinel security policies covering AWS regions, encrypted storage, EC2 instance types, IMDSv2, network access and Terraform supply-chain security.

I tested the policies using simulated Terraform data. The automated tests passed for the scenarios tested. I also generated a Terraform plan without deploying any AWS resources.

## Limitations

One limitation is that selecting the AWS Ireland region does not guarantee that data will always remain in Ireland. Backups, replication and remote administrative access can affect where information is stored or accessed.

Another limitation is that Sentinel checks infrastructure configurations, but it cannot detect every security problem. For example, an approved Terraform provider or module could still contain vulnerabilities.

Sentinel also checks proposed changes before deployment. Security problems or configuration changes could happen afterwards.

The HCP Terraform Free plan limited the number of policies and enforcement options available. Five policies were added to HCP Terraform, while the sixth was tested locally. A live HCP policy-evaluation run was not completed.

## Recommendations

I would recommend adding more checks for data backups, replication and access permissions.

Organisations should also regularly scan Terraform providers and modules for vulnerabilities and review their security policies as cloud services change.

Finally, I would recommend using automated CI/CD testing and continuous cloud monitoring alongside Sentinel to identify security issues before and after deployment.

## Conclusion

This project showed me how Policy-as-Code can improve infrastructure security by checking configurations against security rules.

However, Sentinel works best when combined with other security tools, regular reviews and continuous monitoring.

**AI declaration:** OpenAI ChatGPT (GPT-6) was used to explain concepts, assist with troubleshooting, develop test examples and help prepare documentation. I carried out and reviewed the practical implementation and tests.