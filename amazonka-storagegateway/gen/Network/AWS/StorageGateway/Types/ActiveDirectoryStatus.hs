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
-- Module      : Network.AWS.StorageGateway.Types.ActiveDirectoryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.ActiveDirectoryStatus
  ( ActiveDirectoryStatus
      ( ..,
        ActiveDirectoryStatusACCESSDENIED,
        ActiveDirectoryStatusDETACHED,
        ActiveDirectoryStatusJOINED,
        ActiveDirectoryStatusJOINING,
        ActiveDirectoryStatusNETWORKERROR,
        ActiveDirectoryStatusTIMEOUT,
        ActiveDirectoryStatusUNKNOWNERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActiveDirectoryStatus = ActiveDirectoryStatus'
  { fromActiveDirectoryStatus ::
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

pattern ActiveDirectoryStatusACCESSDENIED :: ActiveDirectoryStatus
pattern ActiveDirectoryStatusACCESSDENIED = ActiveDirectoryStatus' "ACCESS_DENIED"

pattern ActiveDirectoryStatusDETACHED :: ActiveDirectoryStatus
pattern ActiveDirectoryStatusDETACHED = ActiveDirectoryStatus' "DETACHED"

pattern ActiveDirectoryStatusJOINED :: ActiveDirectoryStatus
pattern ActiveDirectoryStatusJOINED = ActiveDirectoryStatus' "JOINED"

pattern ActiveDirectoryStatusJOINING :: ActiveDirectoryStatus
pattern ActiveDirectoryStatusJOINING = ActiveDirectoryStatus' "JOINING"

pattern ActiveDirectoryStatusNETWORKERROR :: ActiveDirectoryStatus
pattern ActiveDirectoryStatusNETWORKERROR = ActiveDirectoryStatus' "NETWORK_ERROR"

pattern ActiveDirectoryStatusTIMEOUT :: ActiveDirectoryStatus
pattern ActiveDirectoryStatusTIMEOUT = ActiveDirectoryStatus' "TIMEOUT"

pattern ActiveDirectoryStatusUNKNOWNERROR :: ActiveDirectoryStatus
pattern ActiveDirectoryStatusUNKNOWNERROR = ActiveDirectoryStatus' "UNKNOWN_ERROR"

{-# COMPLETE
  ActiveDirectoryStatusACCESSDENIED,
  ActiveDirectoryStatusDETACHED,
  ActiveDirectoryStatusJOINED,
  ActiveDirectoryStatusJOINING,
  ActiveDirectoryStatusNETWORKERROR,
  ActiveDirectoryStatusTIMEOUT,
  ActiveDirectoryStatusUNKNOWNERROR,
  ActiveDirectoryStatus'
  #-}

instance Prelude.FromText ActiveDirectoryStatus where
  parser = ActiveDirectoryStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActiveDirectoryStatus where
  toText (ActiveDirectoryStatus' x) = x

instance Prelude.Hashable ActiveDirectoryStatus

instance Prelude.NFData ActiveDirectoryStatus

instance Prelude.ToByteString ActiveDirectoryStatus

instance Prelude.ToQuery ActiveDirectoryStatus

instance Prelude.ToHeader ActiveDirectoryStatus

instance Prelude.FromJSON ActiveDirectoryStatus where
  parseJSON = Prelude.parseJSONText "ActiveDirectoryStatus"
