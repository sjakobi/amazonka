{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Eac3PassthroughControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3PassthroughControl
  ( Eac3PassthroughControl
      ( ..,
        NoPassthrough,
        WhenPossible
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Eac3 Passthrough Control
data Eac3PassthroughControl
  = Eac3PassthroughControl'
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

pattern NoPassthrough :: Eac3PassthroughControl
pattern NoPassthrough = Eac3PassthroughControl' "NO_PASSTHROUGH"

pattern WhenPossible :: Eac3PassthroughControl
pattern WhenPossible = Eac3PassthroughControl' "WHEN_POSSIBLE"

{-# COMPLETE
  NoPassthrough,
  WhenPossible,
  Eac3PassthroughControl'
  #-}

instance FromText Eac3PassthroughControl where
  parser = (Eac3PassthroughControl' . mk) <$> takeText

instance ToText Eac3PassthroughControl where
  toText (Eac3PassthroughControl' ci) = original ci

instance Hashable Eac3PassthroughControl

instance NFData Eac3PassthroughControl

instance ToByteString Eac3PassthroughControl

instance ToQuery Eac3PassthroughControl

instance ToHeader Eac3PassthroughControl

instance ToJSON Eac3PassthroughControl where
  toJSON = toJSONText

instance FromJSON Eac3PassthroughControl where
  parseJSON = parseJSONText "Eac3PassthroughControl"
