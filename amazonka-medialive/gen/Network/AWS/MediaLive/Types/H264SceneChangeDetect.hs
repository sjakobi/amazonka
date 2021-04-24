{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264SceneChangeDetect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264SceneChangeDetect
  ( H264SceneChangeDetect
      ( ..,
        HSCDDisabled,
        HSCDEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Scene Change Detect
data H264SceneChangeDetect
  = H264SceneChangeDetect'
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

pattern HSCDDisabled :: H264SceneChangeDetect
pattern HSCDDisabled = H264SceneChangeDetect' "DISABLED"

pattern HSCDEnabled :: H264SceneChangeDetect
pattern HSCDEnabled = H264SceneChangeDetect' "ENABLED"

{-# COMPLETE
  HSCDDisabled,
  HSCDEnabled,
  H264SceneChangeDetect'
  #-}

instance FromText H264SceneChangeDetect where
  parser = (H264SceneChangeDetect' . mk) <$> takeText

instance ToText H264SceneChangeDetect where
  toText (H264SceneChangeDetect' ci) = original ci

instance Hashable H264SceneChangeDetect

instance NFData H264SceneChangeDetect

instance ToByteString H264SceneChangeDetect

instance ToQuery H264SceneChangeDetect

instance ToHeader H264SceneChangeDetect

instance ToJSON H264SceneChangeDetect where
  toJSON = toJSONText

instance FromJSON H264SceneChangeDetect where
  parseJSON = parseJSONText "H264SceneChangeDetect"
