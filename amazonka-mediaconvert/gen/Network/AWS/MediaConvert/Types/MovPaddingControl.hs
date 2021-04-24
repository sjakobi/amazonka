{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MovPaddingControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MovPaddingControl
  ( MovPaddingControl
      ( ..,
        MPCNone,
        MPCOmneon
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | To make this output compatible with Omenon, keep the default value, OMNEON. Unless you need Omneon compatibility, set this value to NONE. When you keep the default value, OMNEON, MediaConvert increases the length of the edit list atom. This might cause file rejections when a recipient of the output file doesn't expct this extra padding.
data MovPaddingControl = MovPaddingControl' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MPCNone :: MovPaddingControl
pattern MPCNone = MovPaddingControl' "NONE"

pattern MPCOmneon :: MovPaddingControl
pattern MPCOmneon = MovPaddingControl' "OMNEON"

{-# COMPLETE
  MPCNone,
  MPCOmneon,
  MovPaddingControl'
  #-}

instance FromText MovPaddingControl where
  parser = (MovPaddingControl' . mk) <$> takeText

instance ToText MovPaddingControl where
  toText (MovPaddingControl' ci) = original ci

instance Hashable MovPaddingControl

instance NFData MovPaddingControl

instance ToByteString MovPaddingControl

instance ToQuery MovPaddingControl

instance ToHeader MovPaddingControl

instance ToJSON MovPaddingControl where
  toJSON = toJSONText

instance FromJSON MovPaddingControl where
  parseJSON = parseJSONText "MovPaddingControl"
