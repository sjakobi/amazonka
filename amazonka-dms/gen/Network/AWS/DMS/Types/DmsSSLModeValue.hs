{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.DmsSSLModeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.DmsSSLModeValue
  ( DmsSSLModeValue
      ( ..,
        None,
        Require,
        VerifyCa,
        VerifyFull
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DmsSSLModeValue = DmsSSLModeValue' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern None :: DmsSSLModeValue
pattern None = DmsSSLModeValue' "none"

pattern Require :: DmsSSLModeValue
pattern Require = DmsSSLModeValue' "require"

pattern VerifyCa :: DmsSSLModeValue
pattern VerifyCa = DmsSSLModeValue' "verify-ca"

pattern VerifyFull :: DmsSSLModeValue
pattern VerifyFull = DmsSSLModeValue' "verify-full"

{-# COMPLETE
  None,
  Require,
  VerifyCa,
  VerifyFull,
  DmsSSLModeValue'
  #-}

instance FromText DmsSSLModeValue where
  parser = (DmsSSLModeValue' . mk) <$> takeText

instance ToText DmsSSLModeValue where
  toText (DmsSSLModeValue' ci) = original ci

instance Hashable DmsSSLModeValue

instance NFData DmsSSLModeValue

instance ToByteString DmsSSLModeValue

instance ToQuery DmsSSLModeValue

instance ToHeader DmsSSLModeValue

instance ToJSON DmsSSLModeValue where
  toJSON = toJSONText

instance FromJSON DmsSSLModeValue where
  parseJSON = parseJSONText "DmsSSLModeValue"
