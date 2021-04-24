{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265FlickerAq
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265FlickerAq
  ( H265FlickerAq
      ( ..,
        HDisabled,
        HEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H265 Flicker Aq
data H265FlickerAq = H265FlickerAq' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HDisabled :: H265FlickerAq
pattern HDisabled = H265FlickerAq' "DISABLED"

pattern HEnabled :: H265FlickerAq
pattern HEnabled = H265FlickerAq' "ENABLED"

{-# COMPLETE
  HDisabled,
  HEnabled,
  H265FlickerAq'
  #-}

instance FromText H265FlickerAq where
  parser = (H265FlickerAq' . mk) <$> takeText

instance ToText H265FlickerAq where
  toText (H265FlickerAq' ci) = original ci

instance Hashable H265FlickerAq

instance NFData H265FlickerAq

instance ToByteString H265FlickerAq

instance ToQuery H265FlickerAq

instance ToHeader H265FlickerAq

instance ToJSON H265FlickerAq where
  toJSON = toJSONText

instance FromJSON H265FlickerAq where
  parseJSON = parseJSONText "H265FlickerAq"
