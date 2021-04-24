{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationComplianceSeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationComplianceSeverity
  ( AssociationComplianceSeverity
      ( ..,
        Critical,
        High,
        Low,
        Medium,
        Unspecified
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssociationComplianceSeverity
  = AssociationComplianceSeverity'
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

pattern Critical :: AssociationComplianceSeverity
pattern Critical = AssociationComplianceSeverity' "CRITICAL"

pattern High :: AssociationComplianceSeverity
pattern High = AssociationComplianceSeverity' "HIGH"

pattern Low :: AssociationComplianceSeverity
pattern Low = AssociationComplianceSeverity' "LOW"

pattern Medium :: AssociationComplianceSeverity
pattern Medium = AssociationComplianceSeverity' "MEDIUM"

pattern Unspecified :: AssociationComplianceSeverity
pattern Unspecified = AssociationComplianceSeverity' "UNSPECIFIED"

{-# COMPLETE
  Critical,
  High,
  Low,
  Medium,
  Unspecified,
  AssociationComplianceSeverity'
  #-}

instance FromText AssociationComplianceSeverity where
  parser = (AssociationComplianceSeverity' . mk) <$> takeText

instance ToText AssociationComplianceSeverity where
  toText (AssociationComplianceSeverity' ci) = original ci

instance Hashable AssociationComplianceSeverity

instance NFData AssociationComplianceSeverity

instance ToByteString AssociationComplianceSeverity

instance ToQuery AssociationComplianceSeverity

instance ToHeader AssociationComplianceSeverity

instance ToJSON AssociationComplianceSeverity where
  toJSON = toJSONText

instance FromJSON AssociationComplianceSeverity where
  parseJSON = parseJSONText "AssociationComplianceSeverity"
