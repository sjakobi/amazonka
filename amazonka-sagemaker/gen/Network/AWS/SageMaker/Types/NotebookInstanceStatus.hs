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
-- Module      : Network.AWS.SageMaker.Types.NotebookInstanceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NotebookInstanceStatus
  ( NotebookInstanceStatus
      ( ..,
        NotebookInstanceStatusDeleting,
        NotebookInstanceStatusFailed,
        NotebookInstanceStatusInService,
        NotebookInstanceStatusPending,
        NotebookInstanceStatusStopped,
        NotebookInstanceStatusStopping,
        NotebookInstanceStatusUpdating
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotebookInstanceStatus = NotebookInstanceStatus'
  { fromNotebookInstanceStatus ::
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

pattern NotebookInstanceStatusDeleting :: NotebookInstanceStatus
pattern NotebookInstanceStatusDeleting = NotebookInstanceStatus' "Deleting"

pattern NotebookInstanceStatusFailed :: NotebookInstanceStatus
pattern NotebookInstanceStatusFailed = NotebookInstanceStatus' "Failed"

pattern NotebookInstanceStatusInService :: NotebookInstanceStatus
pattern NotebookInstanceStatusInService = NotebookInstanceStatus' "InService"

pattern NotebookInstanceStatusPending :: NotebookInstanceStatus
pattern NotebookInstanceStatusPending = NotebookInstanceStatus' "Pending"

pattern NotebookInstanceStatusStopped :: NotebookInstanceStatus
pattern NotebookInstanceStatusStopped = NotebookInstanceStatus' "Stopped"

pattern NotebookInstanceStatusStopping :: NotebookInstanceStatus
pattern NotebookInstanceStatusStopping = NotebookInstanceStatus' "Stopping"

pattern NotebookInstanceStatusUpdating :: NotebookInstanceStatus
pattern NotebookInstanceStatusUpdating = NotebookInstanceStatus' "Updating"

{-# COMPLETE
  NotebookInstanceStatusDeleting,
  NotebookInstanceStatusFailed,
  NotebookInstanceStatusInService,
  NotebookInstanceStatusPending,
  NotebookInstanceStatusStopped,
  NotebookInstanceStatusStopping,
  NotebookInstanceStatusUpdating,
  NotebookInstanceStatus'
  #-}

instance Prelude.FromText NotebookInstanceStatus where
  parser = NotebookInstanceStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotebookInstanceStatus where
  toText (NotebookInstanceStatus' x) = x

instance Prelude.Hashable NotebookInstanceStatus

instance Prelude.NFData NotebookInstanceStatus

instance Prelude.ToByteString NotebookInstanceStatus

instance Prelude.ToQuery NotebookInstanceStatus

instance Prelude.ToHeader NotebookInstanceStatus

instance Prelude.ToJSON NotebookInstanceStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NotebookInstanceStatus where
  parseJSON = Prelude.parseJSONText "NotebookInstanceStatus"
