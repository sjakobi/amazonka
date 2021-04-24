{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        EccNistP256,
        EccNistP384,
        EccNistP521,
        EccSecgP256K1,
        Rsa2048,
        Rsa3072,
        Rsa4096
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DataKeyPairSpec = DataKeyPairSpec' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EccNistP256 :: DataKeyPairSpec
pattern EccNistP256 = DataKeyPairSpec' "ECC_NIST_P256"

pattern EccNistP384 :: DataKeyPairSpec
pattern EccNistP384 = DataKeyPairSpec' "ECC_NIST_P384"

pattern EccNistP521 :: DataKeyPairSpec
pattern EccNistP521 = DataKeyPairSpec' "ECC_NIST_P521"

pattern EccSecgP256K1 :: DataKeyPairSpec
pattern EccSecgP256K1 = DataKeyPairSpec' "ECC_SECG_P256K1"

pattern Rsa2048 :: DataKeyPairSpec
pattern Rsa2048 = DataKeyPairSpec' "RSA_2048"

pattern Rsa3072 :: DataKeyPairSpec
pattern Rsa3072 = DataKeyPairSpec' "RSA_3072"

pattern Rsa4096 :: DataKeyPairSpec
pattern Rsa4096 = DataKeyPairSpec' "RSA_4096"

{-# COMPLETE
  EccNistP256,
  EccNistP384,
  EccNistP521,
  EccSecgP256K1,
  Rsa2048,
  Rsa3072,
  Rsa4096,
  DataKeyPairSpec'
  #-}

instance FromText DataKeyPairSpec where
  parser = (DataKeyPairSpec' . mk) <$> takeText

instance ToText DataKeyPairSpec where
  toText (DataKeyPairSpec' ci) = original ci

instance Hashable DataKeyPairSpec

instance NFData DataKeyPairSpec

instance ToByteString DataKeyPairSpec

instance ToQuery DataKeyPairSpec

instance ToHeader DataKeyPairSpec

instance ToJSON DataKeyPairSpec where
  toJSON = toJSONText

instance FromJSON DataKeyPairSpec where
  parseJSON = parseJSONText "DataKeyPairSpec"
