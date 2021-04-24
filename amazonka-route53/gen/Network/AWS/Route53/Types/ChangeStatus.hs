{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.ChangeStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.ChangeStatus
  ( ChangeStatus
      ( ..,
        Insync,
        Pending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

data ChangeStatus = ChangeStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Insync :: ChangeStatus
pattern Insync = ChangeStatus' "INSYNC"

pattern Pending :: ChangeStatus
pattern Pending = ChangeStatus' "PENDING"

{-# COMPLETE
  Insync,
  Pending,
  ChangeStatus'
  #-}

instance FromText ChangeStatus where
  parser = (ChangeStatus' . mk) <$> takeText

instance ToText ChangeStatus where
  toText (ChangeStatus' ci) = original ci

instance Hashable ChangeStatus

instance NFData ChangeStatus

instance ToByteString ChangeStatus

instance ToQuery ChangeStatus

instance ToHeader ChangeStatus

instance FromXML ChangeStatus where
  parseXML = parseXMLText "ChangeStatus"
