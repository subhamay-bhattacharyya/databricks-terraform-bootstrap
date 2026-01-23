# databricks-terraform-bootstrap

![Built with Kiro](https://img.shields.io/badge/Built_with-Kiro-8845f4?logo=robot&logoColor=white)&nbsp;![Commit Activity](https://img.shields.io/github/commit-activity/t/subhamay-bhattacharyya/databricks-terraform-bootstrap)&nbsp;![Last Commit](https://img.shields.io/github/last-commit/subhamay-bhattacharyya/databricks-terraform-bootstrap)&nbsp;![Release Date](https://img.shields.io/github/release-date/subhamay-bhattacharyya/databricks-terraform-bootstrap)&nbsp;![Repo Size](https://img.shields.io/github/repo-size/subhamay-bhattacharyya/databricks-terraform-bootstrap)&nbsp;![File Count](https://img.shields.io/github/directory-file-count/subhamay-bhattacharyya/databricks-terraform-bootstrap)&nbsp;![Issues](https://img.shields.io/github/issues/subhamay-bhattacharyya/databricks-terraform-bootstrap)&nbsp;![Top Language](https://img.shields.io/github/languages/top/subhamay-bhattacharyya/databricks-terraform-bootstrap)&nbsp;![Custom Endpoint](https://img.shields.io/endpoint?url=https://gist.githubusercontent.com/bsubhamay/ababf4e6cf3b6863cf30abbc9d6fdcc6/raw/databricks-terraform-bootstrap.json?)

# Databricks Terraform Bootstrap 🚀

This repository provides a **production-ready Terraform bootstrap** for provisioning a Databricks environment, including:

- Databricks Workspace
- Interactive or Single-Node Cluster
- Version-controlled Databricks Notebooks

It demonstrates best practices for **Infrastructure as Code (IaC)**, environment isolation, and future extensibility toward Unity Catalog, jobs, and pipelines.

---

## ✨ Features

- Terraform-managed Databricks workspace
- Cluster provisioning with autoscaling or single-node mode
- Notebook deployment from source-controlled files
- Environment-specific configuration (dev / prod)
- GitHub Actions–ready CI/CD structure

---

## 🏗 Architecture

```text
Terraform
  ├── Workspace (cloud-native)
  ├── Databricks Provider (workspace-level)
  ├── Cluster
  └── Notebook
