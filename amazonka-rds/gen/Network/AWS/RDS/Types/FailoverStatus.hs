{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.FailoverStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.FailoverStatus
  ( FailoverStatus
      ( ..,
        Cancelling,
        FailingOver,
        Pending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FailoverStatus = FailoverStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Cancelling :: FailoverStatus
pattern Cancelling = FailoverStatus' "cancelling"

pattern FailingOver :: FailoverStatus
pattern FailingOver = FailoverStatus' "failing-over"

pattern Pending :: FailoverStatus
pattern Pending = FailoverStatus' "pending"

{-# COMPLETE
  Cancelling,
  FailingOver,
  Pending,
  FailoverStatus'
  #-}

instance FromText FailoverStatus where
  parser = (FailoverStatus' . mk) <$> takeText

instance ToText FailoverStatus where
  toText (FailoverStatus' ci) = original ci

instance Hashable FailoverStatus

instance NFData FailoverStatus

instance ToByteString FailoverStatus

instance ToQuery FailoverStatus

instance ToHeader FailoverStatus

instance FromXML FailoverStatus where
  parseXML = parseXMLText "FailoverStatus"
