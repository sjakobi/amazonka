{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeblockFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeblockFilter
  ( InputDeblockFilter
      ( ..,
        IDisabled,
        IEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Input Deblock Filter
data InputDeblockFilter
  = InputDeblockFilter'
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

pattern IDisabled :: InputDeblockFilter
pattern IDisabled = InputDeblockFilter' "DISABLED"

pattern IEnabled :: InputDeblockFilter
pattern IEnabled = InputDeblockFilter' "ENABLED"

{-# COMPLETE
  IDisabled,
  IEnabled,
  InputDeblockFilter'
  #-}

instance FromText InputDeblockFilter where
  parser = (InputDeblockFilter' . mk) <$> takeText

instance ToText InputDeblockFilter where
  toText (InputDeblockFilter' ci) = original ci

instance Hashable InputDeblockFilter

instance NFData InputDeblockFilter

instance ToByteString InputDeblockFilter

instance ToQuery InputDeblockFilter

instance ToHeader InputDeblockFilter

instance ToJSON InputDeblockFilter where
  toJSON = toJSONText

instance FromJSON InputDeblockFilter where
  parseJSON = parseJSONText "InputDeblockFilter"
