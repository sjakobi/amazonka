{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ActivityStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ActivityStatus
  ( ActivityStatus
      ( ..,
        ASError',
        ASFulfilled,
        ASPendingFulfillment,
        ASPendingTermination
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ActivityStatus = ActivityStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASError' :: ActivityStatus
pattern ASError' = ActivityStatus' "error"

pattern ASFulfilled :: ActivityStatus
pattern ASFulfilled = ActivityStatus' "fulfilled"

pattern ASPendingFulfillment :: ActivityStatus
pattern ASPendingFulfillment = ActivityStatus' "pending_fulfillment"

pattern ASPendingTermination :: ActivityStatus
pattern ASPendingTermination = ActivityStatus' "pending_termination"

{-# COMPLETE
  ASError',
  ASFulfilled,
  ASPendingFulfillment,
  ASPendingTermination,
  ActivityStatus'
  #-}

instance FromText ActivityStatus where
  parser = (ActivityStatus' . mk) <$> takeText

instance ToText ActivityStatus where
  toText (ActivityStatus' ci) = original ci

instance Hashable ActivityStatus

instance NFData ActivityStatus

instance ToByteString ActivityStatus

instance ToQuery ActivityStatus

instance ToHeader ActivityStatus

instance FromXML ActivityStatus where
  parseXML = parseXMLText "ActivityStatus"
