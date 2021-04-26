{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.ApiCacheStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.ApiCacheStatus
  ( ApiCacheStatus
      ( ..,
        ApiCacheStatusAVAILABLE,
        ApiCacheStatusCREATING,
        ApiCacheStatusDELETING,
        ApiCacheStatusFAILED,
        ApiCacheStatusMODIFYING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApiCacheStatus = ApiCacheStatus'
  { fromApiCacheStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ApiCacheStatusAVAILABLE :: ApiCacheStatus
pattern ApiCacheStatusAVAILABLE = ApiCacheStatus' "AVAILABLE"

pattern ApiCacheStatusCREATING :: ApiCacheStatus
pattern ApiCacheStatusCREATING = ApiCacheStatus' "CREATING"

pattern ApiCacheStatusDELETING :: ApiCacheStatus
pattern ApiCacheStatusDELETING = ApiCacheStatus' "DELETING"

pattern ApiCacheStatusFAILED :: ApiCacheStatus
pattern ApiCacheStatusFAILED = ApiCacheStatus' "FAILED"

pattern ApiCacheStatusMODIFYING :: ApiCacheStatus
pattern ApiCacheStatusMODIFYING = ApiCacheStatus' "MODIFYING"

{-# COMPLETE
  ApiCacheStatusAVAILABLE,
  ApiCacheStatusCREATING,
  ApiCacheStatusDELETING,
  ApiCacheStatusFAILED,
  ApiCacheStatusMODIFYING,
  ApiCacheStatus'
  #-}

instance Prelude.FromText ApiCacheStatus where
  parser = ApiCacheStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApiCacheStatus where
  toText (ApiCacheStatus' x) = x

instance Prelude.Hashable ApiCacheStatus

instance Prelude.NFData ApiCacheStatus

instance Prelude.ToByteString ApiCacheStatus

instance Prelude.ToQuery ApiCacheStatus

instance Prelude.ToHeader ApiCacheStatus

instance Prelude.FromJSON ApiCacheStatus where
  parseJSON = Prelude.parseJSONText "ApiCacheStatus"
