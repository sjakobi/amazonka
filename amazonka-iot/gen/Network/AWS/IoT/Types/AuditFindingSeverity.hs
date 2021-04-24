{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AuditFindingSeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditFindingSeverity
  ( AuditFindingSeverity
      ( ..,
        AFSCritical,
        AFSHigh,
        AFSLow,
        AFSMedium
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuditFindingSeverity
  = AuditFindingSeverity'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AFSCritical :: AuditFindingSeverity
pattern AFSCritical = AuditFindingSeverity' "CRITICAL"

pattern AFSHigh :: AuditFindingSeverity
pattern AFSHigh = AuditFindingSeverity' "HIGH"

pattern AFSLow :: AuditFindingSeverity
pattern AFSLow = AuditFindingSeverity' "LOW"

pattern AFSMedium :: AuditFindingSeverity
pattern AFSMedium = AuditFindingSeverity' "MEDIUM"

{-# COMPLETE
  AFSCritical,
  AFSHigh,
  AFSLow,
  AFSMedium,
  AuditFindingSeverity'
  #-}

instance FromText AuditFindingSeverity where
  parser = (AuditFindingSeverity' . mk) <$> takeText

instance ToText AuditFindingSeverity where
  toText (AuditFindingSeverity' ci) = original ci

instance Hashable AuditFindingSeverity

instance NFData AuditFindingSeverity

instance ToByteString AuditFindingSeverity

instance ToQuery AuditFindingSeverity

instance ToHeader AuditFindingSeverity

instance FromJSON AuditFindingSeverity where
  parseJSON = parseJSONText "AuditFindingSeverity"
