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
-- Module      : Network.AWS.RDS.Types.DBProxyStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBProxyStatus
  ( DBProxyStatus
      ( ..,
        DBProxyStatusAvailable,
        DBProxyStatusCreating,
        DBProxyStatusDeleting,
        DBProxyStatusIncompatibleNetwork,
        DBProxyStatusInsufficientResourceLimits,
        DBProxyStatusModifying,
        DBProxyStatusReactivating,
        DBProxyStatusSuspended,
        DBProxyStatusSuspending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DBProxyStatus = DBProxyStatus'
  { fromDBProxyStatus ::
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

pattern DBProxyStatusAvailable :: DBProxyStatus
pattern DBProxyStatusAvailable = DBProxyStatus' "available"

pattern DBProxyStatusCreating :: DBProxyStatus
pattern DBProxyStatusCreating = DBProxyStatus' "creating"

pattern DBProxyStatusDeleting :: DBProxyStatus
pattern DBProxyStatusDeleting = DBProxyStatus' "deleting"

pattern DBProxyStatusIncompatibleNetwork :: DBProxyStatus
pattern DBProxyStatusIncompatibleNetwork = DBProxyStatus' "incompatible-network"

pattern DBProxyStatusInsufficientResourceLimits :: DBProxyStatus
pattern DBProxyStatusInsufficientResourceLimits = DBProxyStatus' "insufficient-resource-limits"

pattern DBProxyStatusModifying :: DBProxyStatus
pattern DBProxyStatusModifying = DBProxyStatus' "modifying"

pattern DBProxyStatusReactivating :: DBProxyStatus
pattern DBProxyStatusReactivating = DBProxyStatus' "reactivating"

pattern DBProxyStatusSuspended :: DBProxyStatus
pattern DBProxyStatusSuspended = DBProxyStatus' "suspended"

pattern DBProxyStatusSuspending :: DBProxyStatus
pattern DBProxyStatusSuspending = DBProxyStatus' "suspending"

{-# COMPLETE
  DBProxyStatusAvailable,
  DBProxyStatusCreating,
  DBProxyStatusDeleting,
  DBProxyStatusIncompatibleNetwork,
  DBProxyStatusInsufficientResourceLimits,
  DBProxyStatusModifying,
  DBProxyStatusReactivating,
  DBProxyStatusSuspended,
  DBProxyStatusSuspending,
  DBProxyStatus'
  #-}

instance Prelude.FromText DBProxyStatus where
  parser = DBProxyStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DBProxyStatus where
  toText (DBProxyStatus' x) = x

instance Prelude.Hashable DBProxyStatus

instance Prelude.NFData DBProxyStatus

instance Prelude.ToByteString DBProxyStatus

instance Prelude.ToQuery DBProxyStatus

instance Prelude.ToHeader DBProxyStatus

instance Prelude.FromXML DBProxyStatus where
  parseXML = Prelude.parseXMLText "DBProxyStatus"
