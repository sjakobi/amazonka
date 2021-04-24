{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.UtcTiming
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.UtcTiming
  ( UtcTiming
      ( ..,
        UTHTTPHead,
        UTHTTPIso,
        UTNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UtcTiming = UtcTiming' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern UTHTTPHead :: UtcTiming
pattern UTHTTPHead = UtcTiming' "HTTP-HEAD"

pattern UTHTTPIso :: UtcTiming
pattern UTHTTPIso = UtcTiming' "HTTP-ISO"

pattern UTNone :: UtcTiming
pattern UTNone = UtcTiming' "NONE"

{-# COMPLETE
  UTHTTPHead,
  UTHTTPIso,
  UTNone,
  UtcTiming'
  #-}

instance FromText UtcTiming where
  parser = (UtcTiming' . mk) <$> takeText

instance ToText UtcTiming where
  toText (UtcTiming' ci) = original ci

instance Hashable UtcTiming

instance NFData UtcTiming

instance ToByteString UtcTiming

instance ToQuery UtcTiming

instance ToHeader UtcTiming

instance ToJSON UtcTiming where
  toJSON = toJSONText

instance FromJSON UtcTiming where
  parseJSON = parseJSONText "UtcTiming"
