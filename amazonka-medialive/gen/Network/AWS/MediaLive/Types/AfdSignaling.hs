{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AfdSignaling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AfdSignaling
  ( AfdSignaling
      ( ..,
        ASAuto,
        ASFixed,
        ASNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Afd Signaling
data AfdSignaling = AfdSignaling' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASAuto :: AfdSignaling
pattern ASAuto = AfdSignaling' "AUTO"

pattern ASFixed :: AfdSignaling
pattern ASFixed = AfdSignaling' "FIXED"

pattern ASNone :: AfdSignaling
pattern ASNone = AfdSignaling' "NONE"

{-# COMPLETE
  ASAuto,
  ASFixed,
  ASNone,
  AfdSignaling'
  #-}

instance FromText AfdSignaling where
  parser = (AfdSignaling' . mk) <$> takeText

instance ToText AfdSignaling where
  toText (AfdSignaling' ci) = original ci

instance Hashable AfdSignaling

instance NFData AfdSignaling

instance ToByteString AfdSignaling

instance ToQuery AfdSignaling

instance ToHeader AfdSignaling

instance ToJSON AfdSignaling where
  toJSON = toJSONText

instance FromJSON AfdSignaling where
  parseJSON = parseJSONText "AfdSignaling"
