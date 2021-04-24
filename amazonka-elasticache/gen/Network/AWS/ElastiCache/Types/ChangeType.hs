{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.ChangeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.ChangeType
  ( ChangeType
      ( ..,
        Immediate,
        RequiresReboot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChangeType = ChangeType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Immediate :: ChangeType
pattern Immediate = ChangeType' "immediate"

pattern RequiresReboot :: ChangeType
pattern RequiresReboot = ChangeType' "requires-reboot"

{-# COMPLETE
  Immediate,
  RequiresReboot,
  ChangeType'
  #-}

instance FromText ChangeType where
  parser = (ChangeType' . mk) <$> takeText

instance ToText ChangeType where
  toText (ChangeType' ci) = original ci

instance Hashable ChangeType

instance NFData ChangeType

instance ToByteString ChangeType

instance ToQuery ChangeType

instance ToHeader ChangeType

instance FromXML ChangeType where
  parseXML = parseXMLText "ChangeType"
