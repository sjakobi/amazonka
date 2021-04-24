{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264FlickerAq
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264FlickerAq
  ( H264FlickerAq
      ( ..,
        HFADisabled,
        HFAEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Flicker Aq
data H264FlickerAq = H264FlickerAq' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HFADisabled :: H264FlickerAq
pattern HFADisabled = H264FlickerAq' "DISABLED"

pattern HFAEnabled :: H264FlickerAq
pattern HFAEnabled = H264FlickerAq' "ENABLED"

{-# COMPLETE
  HFADisabled,
  HFAEnabled,
  H264FlickerAq'
  #-}

instance FromText H264FlickerAq where
  parser = (H264FlickerAq' . mk) <$> takeText

instance ToText H264FlickerAq where
  toText (H264FlickerAq' ci) = original ci

instance Hashable H264FlickerAq

instance NFData H264FlickerAq

instance ToByteString H264FlickerAq

instance ToQuery H264FlickerAq

instance ToHeader H264FlickerAq

instance ToJSON H264FlickerAq where
  toJSON = toJSONText

instance FromJSON H264FlickerAq where
  parseJSON = parseJSONText "H264FlickerAq"
