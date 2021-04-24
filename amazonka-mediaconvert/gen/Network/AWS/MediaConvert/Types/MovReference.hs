{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MovReference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MovReference
  ( MovReference
      ( ..,
        External,
        SelfContained
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Always keep the default value (SELF_CONTAINED) for this setting.
data MovReference = MovReference' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern External :: MovReference
pattern External = MovReference' "EXTERNAL"

pattern SelfContained :: MovReference
pattern SelfContained = MovReference' "SELF_CONTAINED"

{-# COMPLETE
  External,
  SelfContained,
  MovReference'
  #-}

instance FromText MovReference where
  parser = (MovReference' . mk) <$> takeText

instance ToText MovReference where
  toText (MovReference' ci) = original ci

instance Hashable MovReference

instance NFData MovReference

instance ToByteString MovReference

instance ToQuery MovReference

instance ToHeader MovReference

instance ToJSON MovReference where
  toJSON = toJSONText

instance FromJSON MovReference where
  parseJSON = parseJSONText "MovReference"
