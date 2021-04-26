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
-- Module      : Network.AWS.Rekognition.Types.ProjectVersionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ProjectVersionStatus
  ( ProjectVersionStatus
      ( ..,
        ProjectVersionStatusDELETING,
        ProjectVersionStatusFAILED,
        ProjectVersionStatusRUNNING,
        ProjectVersionStatusSTARTING,
        ProjectVersionStatusSTOPPED,
        ProjectVersionStatusSTOPPING,
        ProjectVersionStatusTRAININGCOMPLETED,
        ProjectVersionStatusTRAININGFAILED,
        ProjectVersionStatusTRAININGINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProjectVersionStatus = ProjectVersionStatus'
  { fromProjectVersionStatus ::
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

pattern ProjectVersionStatusDELETING :: ProjectVersionStatus
pattern ProjectVersionStatusDELETING = ProjectVersionStatus' "DELETING"

pattern ProjectVersionStatusFAILED :: ProjectVersionStatus
pattern ProjectVersionStatusFAILED = ProjectVersionStatus' "FAILED"

pattern ProjectVersionStatusRUNNING :: ProjectVersionStatus
pattern ProjectVersionStatusRUNNING = ProjectVersionStatus' "RUNNING"

pattern ProjectVersionStatusSTARTING :: ProjectVersionStatus
pattern ProjectVersionStatusSTARTING = ProjectVersionStatus' "STARTING"

pattern ProjectVersionStatusSTOPPED :: ProjectVersionStatus
pattern ProjectVersionStatusSTOPPED = ProjectVersionStatus' "STOPPED"

pattern ProjectVersionStatusSTOPPING :: ProjectVersionStatus
pattern ProjectVersionStatusSTOPPING = ProjectVersionStatus' "STOPPING"

pattern ProjectVersionStatusTRAININGCOMPLETED :: ProjectVersionStatus
pattern ProjectVersionStatusTRAININGCOMPLETED = ProjectVersionStatus' "TRAINING_COMPLETED"

pattern ProjectVersionStatusTRAININGFAILED :: ProjectVersionStatus
pattern ProjectVersionStatusTRAININGFAILED = ProjectVersionStatus' "TRAINING_FAILED"

pattern ProjectVersionStatusTRAININGINPROGRESS :: ProjectVersionStatus
pattern ProjectVersionStatusTRAININGINPROGRESS = ProjectVersionStatus' "TRAINING_IN_PROGRESS"

{-# COMPLETE
  ProjectVersionStatusDELETING,
  ProjectVersionStatusFAILED,
  ProjectVersionStatusRUNNING,
  ProjectVersionStatusSTARTING,
  ProjectVersionStatusSTOPPED,
  ProjectVersionStatusSTOPPING,
  ProjectVersionStatusTRAININGCOMPLETED,
  ProjectVersionStatusTRAININGFAILED,
  ProjectVersionStatusTRAININGINPROGRESS,
  ProjectVersionStatus'
  #-}

instance Prelude.FromText ProjectVersionStatus where
  parser = ProjectVersionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProjectVersionStatus where
  toText (ProjectVersionStatus' x) = x

instance Prelude.Hashable ProjectVersionStatus

instance Prelude.NFData ProjectVersionStatus

instance Prelude.ToByteString ProjectVersionStatus

instance Prelude.ToQuery ProjectVersionStatus

instance Prelude.ToHeader ProjectVersionStatus

instance Prelude.FromJSON ProjectVersionStatus where
  parseJSON = Prelude.parseJSONText "ProjectVersionStatus"
