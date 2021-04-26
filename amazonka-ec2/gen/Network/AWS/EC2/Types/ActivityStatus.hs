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
-- Module      : Network.AWS.EC2.Types.ActivityStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ActivityStatus
  ( ActivityStatus
      ( ..,
        ActivityStatusError,
        ActivityStatusFulfilled,
        ActivityStatusPendingFulfillment,
        ActivityStatusPendingTermination
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ActivityStatus = ActivityStatus'
  { fromActivityStatus ::
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

pattern ActivityStatusError :: ActivityStatus
pattern ActivityStatusError = ActivityStatus' "error"

pattern ActivityStatusFulfilled :: ActivityStatus
pattern ActivityStatusFulfilled = ActivityStatus' "fulfilled"

pattern ActivityStatusPendingFulfillment :: ActivityStatus
pattern ActivityStatusPendingFulfillment = ActivityStatus' "pending_fulfillment"

pattern ActivityStatusPendingTermination :: ActivityStatus
pattern ActivityStatusPendingTermination = ActivityStatus' "pending_termination"

{-# COMPLETE
  ActivityStatusError,
  ActivityStatusFulfilled,
  ActivityStatusPendingFulfillment,
  ActivityStatusPendingTermination,
  ActivityStatus'
  #-}

instance Prelude.FromText ActivityStatus where
  parser = ActivityStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActivityStatus where
  toText (ActivityStatus' x) = x

instance Prelude.Hashable ActivityStatus

instance Prelude.NFData ActivityStatus

instance Prelude.ToByteString ActivityStatus

instance Prelude.ToQuery ActivityStatus

instance Prelude.ToHeader ActivityStatus

instance Prelude.FromXML ActivityStatus where
  parseXML = Prelude.parseXMLText "ActivityStatus"
