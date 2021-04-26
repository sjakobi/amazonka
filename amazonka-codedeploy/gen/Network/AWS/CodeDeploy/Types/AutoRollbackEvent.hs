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
-- Module      : Network.AWS.CodeDeploy.Types.AutoRollbackEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.AutoRollbackEvent
  ( AutoRollbackEvent
      ( ..,
        AutoRollbackEventDEPLOYMENTFAILURE,
        AutoRollbackEventDEPLOYMENTSTOPONALARM,
        AutoRollbackEventDEPLOYMENTSTOPONREQUEST
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoRollbackEvent = AutoRollbackEvent'
  { fromAutoRollbackEvent ::
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

pattern AutoRollbackEventDEPLOYMENTFAILURE :: AutoRollbackEvent
pattern AutoRollbackEventDEPLOYMENTFAILURE = AutoRollbackEvent' "DEPLOYMENT_FAILURE"

pattern AutoRollbackEventDEPLOYMENTSTOPONALARM :: AutoRollbackEvent
pattern AutoRollbackEventDEPLOYMENTSTOPONALARM = AutoRollbackEvent' "DEPLOYMENT_STOP_ON_ALARM"

pattern AutoRollbackEventDEPLOYMENTSTOPONREQUEST :: AutoRollbackEvent
pattern AutoRollbackEventDEPLOYMENTSTOPONREQUEST = AutoRollbackEvent' "DEPLOYMENT_STOP_ON_REQUEST"

{-# COMPLETE
  AutoRollbackEventDEPLOYMENTFAILURE,
  AutoRollbackEventDEPLOYMENTSTOPONALARM,
  AutoRollbackEventDEPLOYMENTSTOPONREQUEST,
  AutoRollbackEvent'
  #-}

instance Prelude.FromText AutoRollbackEvent where
  parser = AutoRollbackEvent' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoRollbackEvent where
  toText (AutoRollbackEvent' x) = x

instance Prelude.Hashable AutoRollbackEvent

instance Prelude.NFData AutoRollbackEvent

instance Prelude.ToByteString AutoRollbackEvent

instance Prelude.ToQuery AutoRollbackEvent

instance Prelude.ToHeader AutoRollbackEvent

instance Prelude.ToJSON AutoRollbackEvent where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AutoRollbackEvent where
  parseJSON = Prelude.parseJSONText "AutoRollbackEvent"
