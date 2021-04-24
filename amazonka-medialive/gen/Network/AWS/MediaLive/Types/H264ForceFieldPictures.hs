{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264ForceFieldPictures
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264ForceFieldPictures
  ( H264ForceFieldPictures
      ( ..,
        HFFPDisabled,
        HFFPEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Force Field Pictures
data H264ForceFieldPictures
  = H264ForceFieldPictures'
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

pattern HFFPDisabled :: H264ForceFieldPictures
pattern HFFPDisabled = H264ForceFieldPictures' "DISABLED"

pattern HFFPEnabled :: H264ForceFieldPictures
pattern HFFPEnabled = H264ForceFieldPictures' "ENABLED"

{-# COMPLETE
  HFFPDisabled,
  HFFPEnabled,
  H264ForceFieldPictures'
  #-}

instance FromText H264ForceFieldPictures where
  parser = (H264ForceFieldPictures' . mk) <$> takeText

instance ToText H264ForceFieldPictures where
  toText (H264ForceFieldPictures' ci) = original ci

instance Hashable H264ForceFieldPictures

instance NFData H264ForceFieldPictures

instance ToByteString H264ForceFieldPictures

instance ToQuery H264ForceFieldPictures

instance ToHeader H264ForceFieldPictures

instance ToJSON H264ForceFieldPictures where
  toJSON = toJSONText

instance FromJSON H264ForceFieldPictures where
  parseJSON = parseJSONText "H264ForceFieldPictures"
