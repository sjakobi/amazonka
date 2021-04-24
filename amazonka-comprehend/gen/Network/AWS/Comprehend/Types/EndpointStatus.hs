{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.EndpointStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EndpointStatus
  ( EndpointStatus
      ( ..,
        ESCreating,
        ESDeleting,
        ESFailed,
        ESInService,
        ESUpdating
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

pattern ESCreating :: EndpointStatus
pattern ESCreating = EndpointStatus' "CREATING"

pattern ESDeleting :: EndpointStatus
pattern ESDeleting = EndpointStatus' "DELETING"

pattern ESFailed :: EndpointStatus
pattern ESFailed = EndpointStatus' "FAILED"

pattern ESInService :: EndpointStatus
pattern ESInService = EndpointStatus' "IN_SERVICE"

pattern ESUpdating :: EndpointStatus
pattern ESUpdating = EndpointStatus' "UPDATING"

{-# COMPLETE
  ESCreating,
  ESDeleting,
  ESFailed,
  ESInService,
  ESUpdating,
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
