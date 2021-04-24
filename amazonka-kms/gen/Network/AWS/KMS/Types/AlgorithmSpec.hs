{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.AlgorithmSpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.AlgorithmSpec
  ( AlgorithmSpec
      ( ..,
        ASRsaesOaepSha1,
        ASRsaesOaepSha256,
        ASRsaesPKCS1V15
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AlgorithmSpec = AlgorithmSpec' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASRsaesOaepSha1 :: AlgorithmSpec
pattern ASRsaesOaepSha1 = AlgorithmSpec' "RSAES_OAEP_SHA_1"

pattern ASRsaesOaepSha256 :: AlgorithmSpec
pattern ASRsaesOaepSha256 = AlgorithmSpec' "RSAES_OAEP_SHA_256"

pattern ASRsaesPKCS1V15 :: AlgorithmSpec
pattern ASRsaesPKCS1V15 = AlgorithmSpec' "RSAES_PKCS1_V1_5"

{-# COMPLETE
  ASRsaesOaepSha1,
  ASRsaesOaepSha256,
  ASRsaesPKCS1V15,
  AlgorithmSpec'
  #-}

instance FromText AlgorithmSpec where
  parser = (AlgorithmSpec' . mk) <$> takeText

instance ToText AlgorithmSpec where
  toText (AlgorithmSpec' ci) = original ci

instance Hashable AlgorithmSpec

instance NFData AlgorithmSpec

instance ToByteString AlgorithmSpec

instance ToQuery AlgorithmSpec

instance ToHeader AlgorithmSpec

instance ToJSON AlgorithmSpec where
  toJSON = toJSONText
