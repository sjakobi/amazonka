{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.ApplyMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ApplyMethod
  ( ApplyMethod
      ( ..,
        Immediate,
        PendingReboot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ApplyMethod = ApplyMethod' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Immediate :: ApplyMethod
pattern Immediate = ApplyMethod' "immediate"

pattern PendingReboot :: ApplyMethod
pattern PendingReboot = ApplyMethod' "pending-reboot"

{-# COMPLETE
  Immediate,
  PendingReboot,
  ApplyMethod'
  #-}

instance FromText ApplyMethod where
  parser = (ApplyMethod' . mk) <$> takeText

instance ToText ApplyMethod where
  toText (ApplyMethod' ci) = original ci

instance Hashable ApplyMethod

instance NFData ApplyMethod

instance ToByteString ApplyMethod

instance ToQuery ApplyMethod

instance ToHeader ApplyMethod

instance FromXML ApplyMethod where
  parseXML = parseXMLText "ApplyMethod"
