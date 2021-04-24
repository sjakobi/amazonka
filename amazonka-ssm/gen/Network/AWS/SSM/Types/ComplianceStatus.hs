{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ComplianceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ComplianceStatus
  ( ComplianceStatus
      ( ..,
        Compliant,
        NonCompliant
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ComplianceStatus = ComplianceStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Compliant :: ComplianceStatus
pattern Compliant = ComplianceStatus' "COMPLIANT"

pattern NonCompliant :: ComplianceStatus
pattern NonCompliant = ComplianceStatus' "NON_COMPLIANT"

{-# COMPLETE
  Compliant,
  NonCompliant,
  ComplianceStatus'
  #-}

instance FromText ComplianceStatus where
  parser = (ComplianceStatus' . mk) <$> takeText

instance ToText ComplianceStatus where
  toText (ComplianceStatus' ci) = original ci

instance Hashable ComplianceStatus

instance NFData ComplianceStatus

instance ToByteString ComplianceStatus

instance ToQuery ComplianceStatus

instance ToHeader ComplianceStatus

instance ToJSON ComplianceStatus where
  toJSON = toJSONText

instance FromJSON ComplianceStatus where
  parseJSON = parseJSONText "ComplianceStatus"
