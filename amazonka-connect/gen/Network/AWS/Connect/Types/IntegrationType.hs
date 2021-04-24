{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.IntegrationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.IntegrationType
  ( IntegrationType
      ( ..,
        Event
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IntegrationType = IntegrationType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Event :: IntegrationType
pattern Event = IntegrationType' "EVENT"

{-# COMPLETE
  Event,
  IntegrationType'
  #-}

instance FromText IntegrationType where
  parser = (IntegrationType' . mk) <$> takeText

instance ToText IntegrationType where
  toText (IntegrationType' ci) = original ci

instance Hashable IntegrationType

instance NFData IntegrationType

instance ToByteString IntegrationType

instance ToQuery IntegrationType

instance ToHeader IntegrationType

instance ToJSON IntegrationType where
  toJSON = toJSONText

instance FromJSON IntegrationType where
  parseJSON = parseJSONText "IntegrationType"
