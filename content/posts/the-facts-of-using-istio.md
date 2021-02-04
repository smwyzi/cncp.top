---
title: "生产环境落地 Istio 前，你需要知道的一些真相"
date: 2021-02-04T23:11:11+08:00
tags : ["Istio", "Service Mesh", "Cloud Native"]
categories : ["Service Mesh"]
---

Istio 是当今云原生领域最流行的服务网格产品之一，但如果你想要在生产环境中大规模落地，以下因素可能你是应该提前关注和思考的。

## 使用 Istio 无法做到完全对应用透明
服务通信和治理相关的功能迁移到 Sidecar 进程中后, 应用中的 SDK 通常需要作出一些对应的改变。
比如 SDK 需要关闭一些功能，例如重试。一个典型的场景是，SDK 重试 m 次，Sidecar 重试 n 次，这会导致 m * n 的重试风暴，从而引发风险。
此外，诸如 trace header 的透传，也需要 SDK 进行支持。

## Istio 对非 K8S 环境的支持有限

## 只有 HTTP 协议是一等公民

## 扩展 Istio 的成本并不低

## Istio 在集群规模较大时的性能问题

## Isito 技术架构的成熟度还没有达到预期

## Istio 缺乏成熟的产品生态

## Istio 目前解决的问题域还很有限
