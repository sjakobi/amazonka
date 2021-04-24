{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ObjectiveStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ObjectiveStatus
  ( ObjectiveStatus
      ( ..,
        OSFailed,
        OSPending,
        OSSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ObjectiveStatus = ObjectiveStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OSFailed :: ObjectiveStatus
pattern OSFailed = ObjectiveStatus' "Failed"

pattern OSPending :: ObjectiveStatus
pattern OSPending = ObjectiveStatus' "Pending"

pattern OSSucceeded :: ObjectiveStatus
pattern OSSucceeded = ObjectiveStatus' "Succeeded"

{-# COMPLETE
  OSFailed,
  OSPending,
  OSSucceeded,
  ObjectiveStatus'
  #-}

instance FromText ObjectiveStatus where
  parser = (ObjectiveStatus' . mk) <$> takeText

instance ToText ObjectiveStatus where
  toText (ObjectiveStatus' ci) = original ci

instance Hashable ObjectiveStatus

instance NFData ObjectiveStatus

instance ToByteString ObjectiveStatus

instance ToQuery ObjectiveStatus

instance ToHeader ObjectiveStatus

instance FromJSON ObjectiveStatus where
  parseJSON = parseJSONText "ObjectiveStatus"
