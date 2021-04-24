{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ScheduledActionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ScheduledActionState
  ( ScheduledActionState
      ( ..,
        Active,
        Disabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data ScheduledActionState
  = ScheduledActionState'
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

pattern Active :: ScheduledActionState
pattern Active = ScheduledActionState' "ACTIVE"

pattern Disabled :: ScheduledActionState
pattern Disabled = ScheduledActionState' "DISABLED"

{-# COMPLETE
  Active,
  Disabled,
  ScheduledActionState'
  #-}

instance FromText ScheduledActionState where
  parser = (ScheduledActionState' . mk) <$> takeText

instance ToText ScheduledActionState where
  toText (ScheduledActionState' ci) = original ci

instance Hashable ScheduledActionState

instance NFData ScheduledActionState

instance ToByteString ScheduledActionState

instance ToQuery ScheduledActionState

instance ToHeader ScheduledActionState

instance FromXML ScheduledActionState where
  parseXML = parseXMLText "ScheduledActionState"
