{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.NotificationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.NotificationType
  ( NotificationType
      ( ..,
        Command,
        Invocation
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

pattern Command :: NotificationType
pattern Command = NotificationType' "Command"

pattern Invocation :: NotificationType
pattern Invocation = NotificationType' "Invocation"

{-# COMPLETE
  Command,
  Invocation,
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
