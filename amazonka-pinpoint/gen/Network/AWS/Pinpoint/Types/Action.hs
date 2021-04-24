{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.Action
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Action
  ( Action
      ( ..,
        DeepLink,
        OpenApp,
        URL
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Action = Action' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DeepLink :: Action
pattern DeepLink = Action' "DEEP_LINK"

pattern OpenApp :: Action
pattern OpenApp = Action' "OPEN_APP"

pattern URL :: Action
pattern URL = Action' "URL"

{-# COMPLETE
  DeepLink,
  OpenApp,
  URL,
  Action'
  #-}

instance FromText Action where
  parser = (Action' . mk) <$> takeText

instance ToText Action where
  toText (Action' ci) = original ci

instance Hashable Action

instance NFData Action

instance ToByteString Action

instance ToQuery Action

instance ToHeader Action

instance ToJSON Action where
  toJSON = toJSONText

instance FromJSON Action where
  parseJSON = parseJSONText "Action"
