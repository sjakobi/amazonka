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
-- Module      : Network.AWS.SSM.Types.LastResourceDataSyncStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.LastResourceDataSyncStatus
  ( LastResourceDataSyncStatus
      ( ..,
        LastResourceDataSyncStatusFailed,
        LastResourceDataSyncStatusInProgress,
        LastResourceDataSyncStatusSuccessful
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LastResourceDataSyncStatus = LastResourceDataSyncStatus'
  { fromLastResourceDataSyncStatus ::
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

pattern LastResourceDataSyncStatusFailed :: LastResourceDataSyncStatus
pattern LastResourceDataSyncStatusFailed = LastResourceDataSyncStatus' "Failed"

pattern LastResourceDataSyncStatusInProgress :: LastResourceDataSyncStatus
pattern LastResourceDataSyncStatusInProgress = LastResourceDataSyncStatus' "InProgress"

pattern LastResourceDataSyncStatusSuccessful :: LastResourceDataSyncStatus
pattern LastResourceDataSyncStatusSuccessful = LastResourceDataSyncStatus' "Successful"

{-# COMPLETE
  LastResourceDataSyncStatusFailed,
  LastResourceDataSyncStatusInProgress,
  LastResourceDataSyncStatusSuccessful,
  LastResourceDataSyncStatus'
  #-}

instance Prelude.FromText LastResourceDataSyncStatus where
  parser = LastResourceDataSyncStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText LastResourceDataSyncStatus where
  toText (LastResourceDataSyncStatus' x) = x

instance Prelude.Hashable LastResourceDataSyncStatus

instance Prelude.NFData LastResourceDataSyncStatus

instance Prelude.ToByteString LastResourceDataSyncStatus

instance Prelude.ToQuery LastResourceDataSyncStatus

instance Prelude.ToHeader LastResourceDataSyncStatus

instance Prelude.FromJSON LastResourceDataSyncStatus where
  parseJSON = Prelude.parseJSONText "LastResourceDataSyncStatus"
