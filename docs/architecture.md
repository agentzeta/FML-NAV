# FML Protocol Architecture

## Overview

FML Protocol leverages Aleo's zero-knowledge infrastructure to enable private fund management on-chain.

## Core Components

### 1. Private NAV Calculation
- Positions stored as encrypted Aleo records
- ZK circuit computes NAV without revealing holdings
- Daily proofs published on-chain

### 2. Compliant LP Tokens
- Tokens include embedded KYC proofs
- Transfer restrictions enforced by circuits
- Secondary trading with privacy

### 3. Fund Factory
- Deploy new funds with custom parameters
- Configure privacy settings
- Set compliance requirements

## Technical Flow

Fund Manager → Submit Positions → ZK Circuit → NAV Proof → Public Verification ↓ ↓ Private Only NAV revealed
## Privacy Model

- **What's Private**: Positions, strategies, investor identities
- **What's Public**: Total NAV, number of investors, compliance status

## Integration Points

1. Price Oracles - Chainlink compatible
2. Identity Verification - ZKPass integration
3. Cross-chain Bridge - Via Aleo bridge
