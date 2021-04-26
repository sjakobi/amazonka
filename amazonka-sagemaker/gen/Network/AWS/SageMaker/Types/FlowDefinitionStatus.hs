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
-- Module      : Network.AWS.SageMaker.Types.FlowDefinitionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FlowDefinitionStatus
  ( FlowDefinitionStatus
      ( ..,
        FlowDefinitionStatusActive,
        FlowDefinitionStatusDeleting,
        FlowDefinitionStatusFailed,
        FlowDefinitionStatusInitializing
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FlowDefinitionStatus = FlowDefinitionStatus'
  { fromFlowDefinitionStatus ::
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

pattern FlowDefinitionStatusActive :: FlowDefinitionStatus
pattern FlowDefinitionStatusActive = FlowDefinitionStatus' "Active"

pattern FlowDefinitionStatusDeleting :: FlowDefinitionStatus
pattern FlowDefinitionStatusDeleting = FlowDefinitionStatus' "Deleting"

pattern FlowDefinitionStatusFailed :: FlowDefinitionStatus
pattern FlowDefinitionStatusFailed = FlowDefinitionStatus' "Failed"

pattern FlowDefinitionStatusInitializing :: FlowDefinitionStatus
pattern FlowDefinitionStatusInitializing = FlowDefinitionStatus' "Initializing"

{-# COMPLETE
  FlowDefinitionStatusActive,
  FlowDefinitionStatusDeleting,
  FlowDefinitionStatusFailed,
  FlowDefinitionStatusInitializing,
  FlowDefinitionStatus'
  #-}

instance Prelude.FromText FlowDefinitionStatus where
  parser = FlowDefinitionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText FlowDefinitionStatus where
  toText (FlowDefinitionStatus' x) = x

instance Prelude.Hashable FlowDefinitionStatus

instance Prelude.NFData FlowDefinitionStatus

instance Prelude.ToByteString FlowDefinitionStatus

instance Prelude.ToQuery FlowDefinitionStatus

instance Prelude.ToHeader FlowDefinitionStatus

instance Prelude.FromJSON FlowDefinitionStatus where
  parseJSON = Prelude.parseJSONText "FlowDefinitionStatus"
