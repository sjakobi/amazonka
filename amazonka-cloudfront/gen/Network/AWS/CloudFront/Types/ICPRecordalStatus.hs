{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.ICPRecordalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.ICPRecordalStatus
  ( ICPRecordalStatus
      ( ..,
        Approved,
        Pending,
        Suspended
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ICPRecordalStatus = ICPRecordalStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Approved :: ICPRecordalStatus
pattern Approved = ICPRecordalStatus' "APPROVED"

pattern Pending :: ICPRecordalStatus
pattern Pending = ICPRecordalStatus' "PENDING"

pattern Suspended :: ICPRecordalStatus
pattern Suspended = ICPRecordalStatus' "SUSPENDED"

{-# COMPLETE
  Approved,
  Pending,
  Suspended,
  ICPRecordalStatus'
  #-}

instance FromText ICPRecordalStatus where
  parser = (ICPRecordalStatus' . mk) <$> takeText

instance ToText ICPRecordalStatus where
  toText (ICPRecordalStatus' ci) = original ci

instance Hashable ICPRecordalStatus

instance NFData ICPRecordalStatus

instance ToByteString ICPRecordalStatus

instance ToQuery ICPRecordalStatus

instance ToHeader ICPRecordalStatus

instance FromXML ICPRecordalStatus where
  parseXML = parseXMLText "ICPRecordalStatus"
