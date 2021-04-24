{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.EndpointStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EndpointStatus
  ( EndpointStatus
      ( ..,
        ECreating,
        EDeleting,
        EFailed,
        EInService,
        EOutOfService,
        ERollingBack,
        ESystemUpdating,
        EUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EndpointStatus = EndpointStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ECreating :: EndpointStatus
pattern ECreating = EndpointStatus' "Creating"

pattern EDeleting :: EndpointStatus
pattern EDeleting = EndpointStatus' "Deleting"

pattern EFailed :: EndpointStatus
pattern EFailed = EndpointStatus' "Failed"

pattern EInService :: EndpointStatus
pattern EInService = EndpointStatus' "InService"

pattern EOutOfService :: EndpointStatus
pattern EOutOfService = EndpointStatus' "OutOfService"

pattern ERollingBack :: EndpointStatus
pattern ERollingBack = EndpointStatus' "RollingBack"

pattern ESystemUpdating :: EndpointStatus
pattern ESystemUpdating = EndpointStatus' "SystemUpdating"

pattern EUpdating :: EndpointStatus
pattern EUpdating = EndpointStatus' "Updating"

{-# COMPLETE
  ECreating,
  EDeleting,
  EFailed,
  EInService,
  EOutOfService,
  ERollingBack,
  ESystemUpdating,
  EUpdating,
  EndpointStatus'
  #-}

instance FromText EndpointStatus where
  parser = (EndpointStatus' . mk) <$> takeText

instance ToText EndpointStatus where
  toText (EndpointStatus' ci) = original ci

instance Hashable EndpointStatus

instance NFData EndpointStatus

instance ToByteString EndpointStatus

instance ToQuery EndpointStatus

instance ToHeader EndpointStatus

instance ToJSON EndpointStatus where
  toJSON = toJSONText

instance FromJSON EndpointStatus where
  parseJSON = parseJSONText "EndpointStatus"
