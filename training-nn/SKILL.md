---
name: training-nn
description: Karpathy-style recipe and common-pitfalls checklist for training neural networks from scratch. Use when designing, debugging, or reviewing a custom training pipeline (data loading, loss, optimizer, regularization) — especially when training silently fails to converge or underperforms with no errors thrown.
---

# Training Neural Networks

Neural net training fails silently: the code runs, throws no exceptions, and still trains something wrong. Use this skill to work through a disciplined recipe instead of guessing at hyperparameters.

## Quick Checklist First

Before anything else, rule out the most common silent bugs — see [most-common-neural-net-mistakes.md](most-common-neural-net-mistakes.md):
- Didn't try to overfit a single batch first
- Forgot to toggle train/eval mode
- Forgot `.zero_grad()` before `.backward()`
- Passed softmaxed outputs to a loss that expects raw logits
- Wrong `bias=False`/`True` interaction with BatchNorm
- Confusing `view()`/`permute()`

## Full Recipe

For the complete step-by-step process — becoming one with the data, building an end-to-end skeleton with dumb baselines, overfitting, regularizing, tuning, and squeezing out final gains — see [recipe-for-training-nn.md](recipe-for-training-nn.md).

Use the recipe's step structure (1. Become one with the data → 2. End-to-end skeleton + baselines → 3. Overfit → 4. Regularize → 5. Tune → 6. Squeeze out the juice) as the default order of operations for any new training pipeline.
