{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.TargetHealthStateEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.TargetHealthStateEnum
  ( TargetHealthStateEnum
      ( ..,
        Draining,
        Healthy,
        Initial,
        Unavailable,
        Unhealthy,
        Unused
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetHealthStateEnum
  = TargetHealthStateEnum'
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

pattern Draining :: TargetHealthStateEnum
pattern Draining = TargetHealthStateEnum' "draining"

pattern Healthy :: TargetHealthStateEnum
pattern Healthy = TargetHealthStateEnum' "healthy"

pattern Initial :: TargetHealthStateEnum
pattern Initial = TargetHealthStateEnum' "initial"

pattern Unavailable :: TargetHealthStateEnum
pattern Unavailable = TargetHealthStateEnum' "unavailable"

pattern Unhealthy :: TargetHealthStateEnum
pattern Unhealthy = TargetHealthStateEnum' "unhealthy"

pattern Unused :: TargetHealthStateEnum
pattern Unused = TargetHealthStateEnum' "unused"

{-# COMPLETE
  Draining,
  Healthy,
  Initial,
  Unavailable,
  Unhealthy,
  Unused,
  TargetHealthStateEnum'
  #-}

instance FromText TargetHealthStateEnum where
  parser = (TargetHealthStateEnum' . mk) <$> takeText

instance ToText TargetHealthStateEnum where
  toText (TargetHealthStateEnum' ci) = original ci

instance Hashable TargetHealthStateEnum

instance NFData TargetHealthStateEnum

instance ToByteString TargetHealthStateEnum

instance ToQuery TargetHealthStateEnum

instance ToHeader TargetHealthStateEnum

instance FromXML TargetHealthStateEnum where
  parseXML = parseXMLText "TargetHealthStateEnum"
