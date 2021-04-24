{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.NotificationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.NotificationType
  ( NotificationType
      ( ..,
        NTBounce,
        NTComplaint,
        NTDelivery
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NotificationType = NotificationType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NTBounce :: NotificationType
pattern NTBounce = NotificationType' "Bounce"

pattern NTComplaint :: NotificationType
pattern NTComplaint = NotificationType' "Complaint"

pattern NTDelivery :: NotificationType
pattern NTDelivery = NotificationType' "Delivery"

{-# COMPLETE
  NTBounce,
  NTComplaint,
  NTDelivery,
  NotificationType'
  #-}

instance FromText NotificationType where
  parser = (NotificationType' . mk) <$> takeText

instance ToText NotificationType where
  toText (NotificationType' ci) = original ci

instance Hashable NotificationType

instance NFData NotificationType

instance ToByteString NotificationType

instance ToQuery NotificationType

instance ToHeader NotificationType
