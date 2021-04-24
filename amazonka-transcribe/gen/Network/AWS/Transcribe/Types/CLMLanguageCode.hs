{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.CLMLanguageCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.CLMLanguageCode
  ( CLMLanguageCode
      ( ..,
        CLMLCEnUs
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CLMLanguageCode = CLMLanguageCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CLMLCEnUs :: CLMLanguageCode
pattern CLMLCEnUs = CLMLanguageCode' "en-US"

{-# COMPLETE
  CLMLCEnUs,
  CLMLanguageCode'
  #-}

instance FromText CLMLanguageCode where
  parser = (CLMLanguageCode' . mk) <$> takeText

instance ToText CLMLanguageCode where
  toText (CLMLanguageCode' ci) = original ci

instance Hashable CLMLanguageCode

instance NFData CLMLanguageCode

instance ToByteString CLMLanguageCode

instance ToQuery CLMLanguageCode

instance ToHeader CLMLanguageCode

instance ToJSON CLMLanguageCode where
  toJSON = toJSONText

instance FromJSON CLMLanguageCode where
  parseJSON = parseJSONText "CLMLanguageCode"
