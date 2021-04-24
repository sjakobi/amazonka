{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.EncryptionAlgorithmSpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.EncryptionAlgorithmSpec
  ( EncryptionAlgorithmSpec
      ( ..,
        RsaesOaepSha1,
        RsaesOaepSha256,
        SymmetricDefault
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EncryptionAlgorithmSpec
  = EncryptionAlgorithmSpec'
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

pattern RsaesOaepSha1 :: EncryptionAlgorithmSpec
pattern RsaesOaepSha1 = EncryptionAlgorithmSpec' "RSAES_OAEP_SHA_1"

pattern RsaesOaepSha256 :: EncryptionAlgorithmSpec
pattern RsaesOaepSha256 = EncryptionAlgorithmSpec' "RSAES_OAEP_SHA_256"

pattern SymmetricDefault :: EncryptionAlgorithmSpec
pattern SymmetricDefault = EncryptionAlgorithmSpec' "SYMMETRIC_DEFAULT"

{-# COMPLETE
  RsaesOaepSha1,
  RsaesOaepSha256,
  SymmetricDefault,
  EncryptionAlgorithmSpec'
  #-}

instance FromText EncryptionAlgorithmSpec where
  parser = (EncryptionAlgorithmSpec' . mk) <$> takeText

instance ToText EncryptionAlgorithmSpec where
  toText (EncryptionAlgorithmSpec' ci) = original ci

instance Hashable EncryptionAlgorithmSpec

instance NFData EncryptionAlgorithmSpec

instance ToByteString EncryptionAlgorithmSpec

instance ToQuery EncryptionAlgorithmSpec

instance ToHeader EncryptionAlgorithmSpec

instance ToJSON EncryptionAlgorithmSpec where
  toJSON = toJSONText

instance FromJSON EncryptionAlgorithmSpec where
  parseJSON = parseJSONText "EncryptionAlgorithmSpec"
