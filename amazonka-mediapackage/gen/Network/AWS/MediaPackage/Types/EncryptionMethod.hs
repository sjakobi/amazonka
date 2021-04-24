{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.EncryptionMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.EncryptionMethod
  ( EncryptionMethod
      ( ..,
        AES128,
        SampleAES
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EncryptionMethod = EncryptionMethod' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AES128 :: EncryptionMethod
pattern AES128 = EncryptionMethod' "AES_128"

pattern SampleAES :: EncryptionMethod
pattern SampleAES = EncryptionMethod' "SAMPLE_AES"

{-# COMPLETE
  AES128,
  SampleAES,
  EncryptionMethod'
  #-}

instance FromText EncryptionMethod where
  parser = (EncryptionMethod' . mk) <$> takeText

instance ToText EncryptionMethod where
  toText (EncryptionMethod' ci) = original ci

instance Hashable EncryptionMethod

instance NFData EncryptionMethod

instance ToByteString EncryptionMethod

instance ToQuery EncryptionMethod

instance ToHeader EncryptionMethod

instance ToJSON EncryptionMethod where
  toJSON = toJSONText

instance FromJSON EncryptionMethod where
  parseJSON = parseJSONText "EncryptionMethod"
