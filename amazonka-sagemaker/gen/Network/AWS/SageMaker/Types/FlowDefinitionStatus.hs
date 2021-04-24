{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        FDSActive,
        FDSDeleting,
        FDSFailed,
        FDSInitializing
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FlowDefinitionStatus
  = FlowDefinitionStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FDSActive :: FlowDefinitionStatus
pattern FDSActive = FlowDefinitionStatus' "Active"

pattern FDSDeleting :: FlowDefinitionStatus
pattern FDSDeleting = FlowDefinitionStatus' "Deleting"

pattern FDSFailed :: FlowDefinitionStatus
pattern FDSFailed = FlowDefinitionStatus' "Failed"

pattern FDSInitializing :: FlowDefinitionStatus
pattern FDSInitializing = FlowDefinitionStatus' "Initializing"

{-# COMPLETE
  FDSActive,
  FDSDeleting,
  FDSFailed,
  FDSInitializing,
  FlowDefinitionStatus'
  #-}

instance FromText FlowDefinitionStatus where
  parser = (FlowDefinitionStatus' . mk) <$> takeText

instance ToText FlowDefinitionStatus where
  toText (FlowDefinitionStatus' ci) = original ci

instance Hashable FlowDefinitionStatus

instance NFData FlowDefinitionStatus

instance ToByteString FlowDefinitionStatus

instance ToQuery FlowDefinitionStatus

instance ToHeader FlowDefinitionStatus

instance FromJSON FlowDefinitionStatus where
  parseJSON = parseJSONText "FlowDefinitionStatus"
