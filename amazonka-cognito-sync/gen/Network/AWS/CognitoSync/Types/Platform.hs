{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoSync.Types.Platform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types.Platform
  ( Platform
      ( ..,
        ADM,
        APNS,
        APNSSandbox,
        GCM
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Platform = Platform' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ADM :: Platform
pattern ADM = Platform' "ADM"

pattern APNS :: Platform
pattern APNS = Platform' "APNS"

pattern APNSSandbox :: Platform
pattern APNSSandbox = Platform' "APNS_SANDBOX"

pattern GCM :: Platform
pattern GCM = Platform' "GCM"

{-# COMPLETE
  ADM,
  APNS,
  APNSSandbox,
  GCM,
  Platform'
  #-}

instance FromText Platform where
  parser = (Platform' . mk) <$> takeText

instance ToText Platform where
  toText (Platform' ci) = original ci

instance Hashable Platform

instance NFData Platform

instance ToByteString Platform

instance ToQuery Platform

instance ToHeader Platform

instance ToJSON Platform where
  toJSON = toJSONText
