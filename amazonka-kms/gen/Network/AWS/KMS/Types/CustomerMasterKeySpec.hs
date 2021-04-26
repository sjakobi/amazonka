{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.CustomerMasterKeySpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.CustomerMasterKeySpec
  ( CustomerMasterKeySpec
      ( ..,
        CustomerMasterKeySpecECCNISTP256,
        CustomerMasterKeySpecECCNISTP384,
        CustomerMasterKeySpecECCNISTP521,
        CustomerMasterKeySpecECCSECGP256K1,
        CustomerMasterKeySpecRSA2048,
        CustomerMasterKeySpecRSA3072,
        CustomerMasterKeySpecRSA4096,
        CustomerMasterKeySpecSYMMETRICDEFAULT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CustomerMasterKeySpec = CustomerMasterKeySpec'
  { fromCustomerMasterKeySpec ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern CustomerMasterKeySpecECCNISTP256 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpecECCNISTP256 = CustomerMasterKeySpec' "ECC_NIST_P256"

pattern CustomerMasterKeySpecECCNISTP384 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpecECCNISTP384 = CustomerMasterKeySpec' "ECC_NIST_P384"

pattern CustomerMasterKeySpecECCNISTP521 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpecECCNISTP521 = CustomerMasterKeySpec' "ECC_NIST_P521"

pattern CustomerMasterKeySpecECCSECGP256K1 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpecECCSECGP256K1 = CustomerMasterKeySpec' "ECC_SECG_P256K1"

pattern CustomerMasterKeySpecRSA2048 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpecRSA2048 = CustomerMasterKeySpec' "RSA_2048"

pattern CustomerMasterKeySpecRSA3072 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpecRSA3072 = CustomerMasterKeySpec' "RSA_3072"

pattern CustomerMasterKeySpecRSA4096 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpecRSA4096 = CustomerMasterKeySpec' "RSA_4096"

pattern CustomerMasterKeySpecSYMMETRICDEFAULT :: CustomerMasterKeySpec
pattern CustomerMasterKeySpecSYMMETRICDEFAULT = CustomerMasterKeySpec' "SYMMETRIC_DEFAULT"

{-# COMPLETE
  CustomerMasterKeySpecECCNISTP256,
  CustomerMasterKeySpecECCNISTP384,
  CustomerMasterKeySpecECCNISTP521,
  CustomerMasterKeySpecECCSECGP256K1,
  CustomerMasterKeySpecRSA2048,
  CustomerMasterKeySpecRSA3072,
  CustomerMasterKeySpecRSA4096,
  CustomerMasterKeySpecSYMMETRICDEFAULT,
  CustomerMasterKeySpec'
  #-}

instance Prelude.FromText CustomerMasterKeySpec where
  parser = CustomerMasterKeySpec' Prelude.<$> Prelude.takeText

instance Prelude.ToText CustomerMasterKeySpec where
  toText (CustomerMasterKeySpec' x) = x

instance Prelude.Hashable CustomerMasterKeySpec

instance Prelude.NFData CustomerMasterKeySpec

instance Prelude.ToByteString CustomerMasterKeySpec

instance Prelude.ToQuery CustomerMasterKeySpec

instance Prelude.ToHeader CustomerMasterKeySpec

instance Prelude.ToJSON CustomerMasterKeySpec where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CustomerMasterKeySpec where
  parseJSON = Prelude.parseJSONText "CustomerMasterKeySpec"
