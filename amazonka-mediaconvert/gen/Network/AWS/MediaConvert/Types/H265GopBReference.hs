{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265GopBReference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265GopBReference
  ( H265GopBReference
      ( ..,
        HGBRGDisabled,
        HGBRGEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | If enable, use reference B frames for GOP structures that have B frames > 1.
data H265GopBReference = H265GopBReference' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HGBRGDisabled :: H265GopBReference
pattern HGBRGDisabled = H265GopBReference' "DISABLED"

pattern HGBRGEnabled :: H265GopBReference
pattern HGBRGEnabled = H265GopBReference' "ENABLED"

{-# COMPLETE
  HGBRGDisabled,
  HGBRGEnabled,
  H265GopBReference'
  #-}

instance FromText H265GopBReference where
  parser = (H265GopBReference' . mk) <$> takeText

instance ToText H265GopBReference where
  toText (H265GopBReference' ci) = original ci

instance Hashable H265GopBReference

instance NFData H265GopBReference

instance ToByteString H265GopBReference

instance ToQuery H265GopBReference

instance ToHeader H265GopBReference

instance ToJSON H265GopBReference where
  toJSON = toJSONText

instance FromJSON H265GopBReference where
  parseJSON = parseJSONText "H265GopBReference"
