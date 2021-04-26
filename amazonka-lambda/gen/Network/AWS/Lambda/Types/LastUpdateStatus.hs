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
-- Module      : Network.AWS.Lambda.Types.LastUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.LastUpdateStatus
  ( LastUpdateStatus
      ( ..,
        LastUpdateStatusFailed,
        LastUpdateStatusInProgress,
        LastUpdateStatusSuccessful
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LastUpdateStatus = LastUpdateStatus'
  { fromLastUpdateStatus ::
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

pattern LastUpdateStatusFailed :: LastUpdateStatus
pattern LastUpdateStatusFailed = LastUpdateStatus' "Failed"

pattern LastUpdateStatusInProgress :: LastUpdateStatus
pattern LastUpdateStatusInProgress = LastUpdateStatus' "InProgress"

pattern LastUpdateStatusSuccessful :: LastUpdateStatus
pattern LastUpdateStatusSuccessful = LastUpdateStatus' "Successful"

{-# COMPLETE
  LastUpdateStatusFailed,
  LastUpdateStatusInProgress,
  LastUpdateStatusSuccessful,
  LastUpdateStatus'
  #-}

instance Prelude.FromText LastUpdateStatus where
  parser = LastUpdateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText LastUpdateStatus where
  toText (LastUpdateStatus' x) = x

instance Prelude.Hashable LastUpdateStatus

instance Prelude.NFData LastUpdateStatus

instance Prelude.ToByteString LastUpdateStatus

instance Prelude.ToQuery LastUpdateStatus

instance Prelude.ToHeader LastUpdateStatus

instance Prelude.FromJSON LastUpdateStatus where
  parseJSON = Prelude.parseJSONText "LastUpdateStatus"
