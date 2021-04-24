{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputSourceEndBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputSourceEndBehavior
  ( InputSourceEndBehavior
      ( ..,
        Continue,
        Loop
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Input Source End Behavior
data InputSourceEndBehavior
  = InputSourceEndBehavior'
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

pattern Continue :: InputSourceEndBehavior
pattern Continue = InputSourceEndBehavior' "CONTINUE"

pattern Loop :: InputSourceEndBehavior
pattern Loop = InputSourceEndBehavior' "LOOP"

{-# COMPLETE
  Continue,
  Loop,
  InputSourceEndBehavior'
  #-}

instance FromText InputSourceEndBehavior where
  parser = (InputSourceEndBehavior' . mk) <$> takeText

instance ToText InputSourceEndBehavior where
  toText (InputSourceEndBehavior' ci) = original ci

instance Hashable InputSourceEndBehavior

instance NFData InputSourceEndBehavior

instance ToByteString InputSourceEndBehavior

instance ToQuery InputSourceEndBehavior

instance ToHeader InputSourceEndBehavior

instance ToJSON InputSourceEndBehavior where
  toJSON = toJSONText

instance FromJSON InputSourceEndBehavior where
  parseJSON = parseJSONText "InputSourceEndBehavior"
