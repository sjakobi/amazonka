{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.QualificationTypeStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.QualificationTypeStatus
  ( QualificationTypeStatus
      ( ..,
        Active,
        Inactive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data QualificationTypeStatus
  = QualificationTypeStatus'
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

pattern Active :: QualificationTypeStatus
pattern Active = QualificationTypeStatus' "Active"

pattern Inactive :: QualificationTypeStatus
pattern Inactive = QualificationTypeStatus' "Inactive"

{-# COMPLETE
  Active,
  Inactive,
  QualificationTypeStatus'
  #-}

instance FromText QualificationTypeStatus where
  parser = (QualificationTypeStatus' . mk) <$> takeText

instance ToText QualificationTypeStatus where
  toText (QualificationTypeStatus' ci) = original ci

instance Hashable QualificationTypeStatus

instance NFData QualificationTypeStatus

instance ToByteString QualificationTypeStatus

instance ToQuery QualificationTypeStatus

instance ToHeader QualificationTypeStatus

instance ToJSON QualificationTypeStatus where
  toJSON = toJSONText

instance FromJSON QualificationTypeStatus where
  parseJSON = parseJSONText "QualificationTypeStatus"
