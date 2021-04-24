{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.FlexMatchMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.FlexMatchMode
  ( FlexMatchMode
      ( ..,
        Standalone,
        WithQueue
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FlexMatchMode = FlexMatchMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Standalone :: FlexMatchMode
pattern Standalone = FlexMatchMode' "STANDALONE"

pattern WithQueue :: FlexMatchMode
pattern WithQueue = FlexMatchMode' "WITH_QUEUE"

{-# COMPLETE
  Standalone,
  WithQueue,
  FlexMatchMode'
  #-}

instance FromText FlexMatchMode where
  parser = (FlexMatchMode' . mk) <$> takeText

instance ToText FlexMatchMode where
  toText (FlexMatchMode' ci) = original ci

instance Hashable FlexMatchMode

instance NFData FlexMatchMode

instance ToByteString FlexMatchMode

instance ToQuery FlexMatchMode

instance ToHeader FlexMatchMode

instance ToJSON FlexMatchMode where
  toJSON = toJSONText

instance FromJSON FlexMatchMode where
  parseJSON = parseJSONText "FlexMatchMode"
