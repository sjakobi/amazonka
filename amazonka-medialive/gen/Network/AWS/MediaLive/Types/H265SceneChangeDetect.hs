{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265SceneChangeDetect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265SceneChangeDetect
  ( H265SceneChangeDetect
      ( ..,
        H26Disabled,
        H26Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H265 Scene Change Detect
data H265SceneChangeDetect
  = H265SceneChangeDetect'
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

pattern H26Disabled :: H265SceneChangeDetect
pattern H26Disabled = H265SceneChangeDetect' "DISABLED"

pattern H26Enabled :: H265SceneChangeDetect
pattern H26Enabled = H265SceneChangeDetect' "ENABLED"

{-# COMPLETE
  H26Disabled,
  H26Enabled,
  H265SceneChangeDetect'
  #-}

instance FromText H265SceneChangeDetect where
  parser = (H265SceneChangeDetect' . mk) <$> takeText

instance ToText H265SceneChangeDetect where
  toText (H265SceneChangeDetect' ci) = original ci

instance Hashable H265SceneChangeDetect

instance NFData H265SceneChangeDetect

instance ToByteString H265SceneChangeDetect

instance ToQuery H265SceneChangeDetect

instance ToHeader H265SceneChangeDetect

instance ToJSON H265SceneChangeDetect where
  toJSON = toJSONText

instance FromJSON H265SceneChangeDetect where
  parseJSON = parseJSONText "H265SceneChangeDetect"
