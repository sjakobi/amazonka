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
-- Module      : Network.AWS.SageMaker.Types.ProjectStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProjectStatus
  ( ProjectStatus
      ( ..,
        ProjectStatusCreateCompleted,
        ProjectStatusCreateFailed,
        ProjectStatusCreateInProgress,
        ProjectStatusDeleteCompleted,
        ProjectStatusDeleteFailed,
        ProjectStatusDeleteInProgress,
        ProjectStatusPending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProjectStatus = ProjectStatus'
  { fromProjectStatus ::
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

pattern ProjectStatusCreateCompleted :: ProjectStatus
pattern ProjectStatusCreateCompleted = ProjectStatus' "CreateCompleted"

pattern ProjectStatusCreateFailed :: ProjectStatus
pattern ProjectStatusCreateFailed = ProjectStatus' "CreateFailed"

pattern ProjectStatusCreateInProgress :: ProjectStatus
pattern ProjectStatusCreateInProgress = ProjectStatus' "CreateInProgress"

pattern ProjectStatusDeleteCompleted :: ProjectStatus
pattern ProjectStatusDeleteCompleted = ProjectStatus' "DeleteCompleted"

pattern ProjectStatusDeleteFailed :: ProjectStatus
pattern ProjectStatusDeleteFailed = ProjectStatus' "DeleteFailed"

pattern ProjectStatusDeleteInProgress :: ProjectStatus
pattern ProjectStatusDeleteInProgress = ProjectStatus' "DeleteInProgress"

pattern ProjectStatusPending :: ProjectStatus
pattern ProjectStatusPending = ProjectStatus' "Pending"

{-# COMPLETE
  ProjectStatusCreateCompleted,
  ProjectStatusCreateFailed,
  ProjectStatusCreateInProgress,
  ProjectStatusDeleteCompleted,
  ProjectStatusDeleteFailed,
  ProjectStatusDeleteInProgress,
  ProjectStatusPending,
  ProjectStatus'
  #-}

instance Prelude.FromText ProjectStatus where
  parser = ProjectStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProjectStatus where
  toText (ProjectStatus' x) = x

instance Prelude.Hashable ProjectStatus

instance Prelude.NFData ProjectStatus

instance Prelude.ToByteString ProjectStatus

instance Prelude.ToQuery ProjectStatus

instance Prelude.ToHeader ProjectStatus

instance Prelude.FromJSON ProjectStatus where
  parseJSON = Prelude.parseJSONText "ProjectStatus"
