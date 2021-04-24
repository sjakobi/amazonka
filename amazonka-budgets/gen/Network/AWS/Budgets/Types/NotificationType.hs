{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.NotificationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.NotificationType
  ( NotificationType
      ( ..,
        Actual,
        Forecasted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The type of a notification. It must be ACTUAL or FORECASTED.
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

pattern Actual :: NotificationType
pattern Actual = NotificationType' "ACTUAL"

pattern Forecasted :: NotificationType
pattern Forecasted = NotificationType' "FORECASTED"

{-# COMPLETE
  Actual,
  Forecasted,
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

instance ToJSON NotificationType where
  toJSON = toJSONText

instance FromJSON NotificationType where
  parseJSON = parseJSONText "NotificationType"
