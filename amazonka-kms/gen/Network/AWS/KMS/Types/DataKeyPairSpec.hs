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
-- Module      : Network.AWS.KMS.Types.DataKeyPairSpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.DataKeyPairSpec
  ( DataKeyPairSpec
      ( ..,
        DataKeyPairSpecECCNISTP256,
        DataKeyPairSpecECCNISTP384,
        DataKeyPairSpecECCNISTP521,
        DataKeyPairSpecECCSECGP256K1,
        DataKeyPairSpecRSA2048,
        DataKeyPairSpecRSA3072,
        DataKeyPairSpecRSA4096
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DataKeyPairSpec = DataKeyPairSpec'
  { fromDataKeyPairSpec ::
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

pattern DataKeyPairSpecECCNISTP256 :: DataKeyPairSpec
pattern DataKeyPairSpecECCNISTP256 = DataKeyPairSpec' "ECC_NIST_P256"

pattern DataKeyPairSpecECCNISTP384 :: DataKeyPairSpec
pattern DataKeyPairSpecECCNISTP384 = DataKeyPairSpec' "ECC_NIST_P384"

pattern DataKeyPairSpecECCNISTP521 :: DataKeyPairSpec
pattern DataKeyPairSpecECCNISTP521 = DataKeyPairSpec' "ECC_NIST_P521"

pattern DataKeyPairSpecECCSECGP256K1 :: DataKeyPairSpec
pattern DataKeyPairSpecECCSECGP256K1 = DataKeyPairSpec' "ECC_SECG_P256K1"

pattern DataKeyPairSpecRSA2048 :: DataKeyPairSpec
pattern DataKeyPairSpecRSA2048 = DataKeyPairSpec' "RSA_2048"

pattern DataKeyPairSpecRSA3072 :: DataKeyPairSpec
pattern DataKeyPairSpecRSA3072 = DataKeyPairSpec' "RSA_3072"

pattern DataKeyPairSpecRSA4096 :: DataKeyPairSpec
pattern DataKeyPairSpecRSA4096 = DataKeyPairSpec' "RSA_4096"

{-# COMPLETE
  DataKeyPairSpecECCNISTP256,
  DataKeyPairSpecECCNISTP384,
  DataKeyPairSpecECCNISTP521,
  DataKeyPairSpecECCSECGP256K1,
  DataKeyPairSpecRSA2048,
  DataKeyPairSpecRSA3072,
  DataKeyPairSpecRSA4096,
  DataKeyPairSpec'
  #-}

instance Prelude.FromText DataKeyPairSpec where
  parser = DataKeyPairSpec' Prelude.<$> Prelude.takeText

instance Prelude.ToText DataKeyPairSpec where
  toText (DataKeyPairSpec' x) = x

instance Prelude.Hashable DataKeyPairSpec

instance Prelude.NFData DataKeyPairSpec

instance Prelude.ToByteString DataKeyPairSpec

instance Prelude.ToQuery DataKeyPairSpec

instance Prelude.ToHeader DataKeyPairSpec

instance Prelude.ToJSON DataKeyPairSpec where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DataKeyPairSpec where
  parseJSON = Prelude.parseJSONText "DataKeyPairSpec"
