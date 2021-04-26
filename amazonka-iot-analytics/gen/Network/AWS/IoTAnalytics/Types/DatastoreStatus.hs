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
-- Module      : Network.AWS.IoTAnalytics.Types.DatastoreStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatastoreStatus
  ( DatastoreStatus
      ( ..,
        DatastoreStatusACTIVE,
        DatastoreStatusCREATING,
        DatastoreStatusDELETING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DatastoreStatus = DatastoreStatus'
  { fromDatastoreStatus ::
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

pattern DatastoreStatusACTIVE :: DatastoreStatus
pattern DatastoreStatusACTIVE = DatastoreStatus' "ACTIVE"

pattern DatastoreStatusCREATING :: DatastoreStatus
pattern DatastoreStatusCREATING = DatastoreStatus' "CREATING"

pattern DatastoreStatusDELETING :: DatastoreStatus
pattern DatastoreStatusDELETING = DatastoreStatus' "DELETING"

{-# COMPLETE
  DatastoreStatusACTIVE,
  DatastoreStatusCREATING,
  DatastoreStatusDELETING,
  DatastoreStatus'
  #-}

instance Prelude.FromText DatastoreStatus where
  parser = DatastoreStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DatastoreStatus where
  toText (DatastoreStatus' x) = x

instance Prelude.Hashable DatastoreStatus

instance Prelude.NFData DatastoreStatus

instance Prelude.ToByteString DatastoreStatus

instance Prelude.ToQuery DatastoreStatus

instance Prelude.ToHeader DatastoreStatus

instance Prelude.FromJSON DatastoreStatus where
  parseJSON = Prelude.parseJSONText "DatastoreStatus"
