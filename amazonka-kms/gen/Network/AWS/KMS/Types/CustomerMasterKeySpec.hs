{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CMKSEccNistP256,
        CMKSEccNistP384,
        CMKSEccNistP521,
        CMKSEccSecgP256K1,
        CMKSRsa2048,
        CMKSRsa3072,
        CMKSRsa4096,
        CMKSSymmetricDefault
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CustomerMasterKeySpec
  = CustomerMasterKeySpec'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CMKSEccNistP256 :: CustomerMasterKeySpec
pattern CMKSEccNistP256 = CustomerMasterKeySpec' "ECC_NIST_P256"

pattern CMKSEccNistP384 :: CustomerMasterKeySpec
pattern CMKSEccNistP384 = CustomerMasterKeySpec' "ECC_NIST_P384"

pattern CMKSEccNistP521 :: CustomerMasterKeySpec
pattern CMKSEccNistP521 = CustomerMasterKeySpec' "ECC_NIST_P521"

pattern CMKSEccSecgP256K1 :: CustomerMasterKeySpec
pattern CMKSEccSecgP256K1 = CustomerMasterKeySpec' "ECC_SECG_P256K1"

pattern CMKSRsa2048 :: CustomerMasterKeySpec
pattern CMKSRsa2048 = CustomerMasterKeySpec' "RSA_2048"

pattern CMKSRsa3072 :: CustomerMasterKeySpec
pattern CMKSRsa3072 = CustomerMasterKeySpec' "RSA_3072"

pattern CMKSRsa4096 :: CustomerMasterKeySpec
pattern CMKSRsa4096 = CustomerMasterKeySpec' "RSA_4096"

pattern CMKSSymmetricDefault :: CustomerMasterKeySpec
pattern CMKSSymmetricDefault = CustomerMasterKeySpec' "SYMMETRIC_DEFAULT"

{-# COMPLETE
  CMKSEccNistP256,
  CMKSEccNistP384,
  CMKSEccNistP521,
  CMKSEccSecgP256K1,
  CMKSRsa2048,
  CMKSRsa3072,
  CMKSRsa4096,
  CMKSSymmetricDefault,
  CustomerMasterKeySpec'
  #-}

instance FromText CustomerMasterKeySpec where
  parser = (CustomerMasterKeySpec' . mk) <$> takeText

instance ToText CustomerMasterKeySpec where
  toText (CustomerMasterKeySpec' ci) = original ci

instance Hashable CustomerMasterKeySpec

instance NFData CustomerMasterKeySpec

instance ToByteString CustomerMasterKeySpec

instance ToQuery CustomerMasterKeySpec

instance ToHeader CustomerMasterKeySpec

instance ToJSON CustomerMasterKeySpec where
  toJSON = toJSONText

instance FromJSON CustomerMasterKeySpec where
  parseJSON = parseJSONText "CustomerMasterKeySpec"
