{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.QualificationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.QualificationStatus
  ( QualificationStatus
      ( ..,
        Granted,
        Revoked
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data QualificationStatus
  = QualificationStatus'
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

pattern Granted :: QualificationStatus
pattern Granted = QualificationStatus' "Granted"

pattern Revoked :: QualificationStatus
pattern Revoked = QualificationStatus' "Revoked"

{-# COMPLETE
  Granted,
  Revoked,
  QualificationStatus'
  #-}

instance FromText QualificationStatus where
  parser = (QualificationStatus' . mk) <$> takeText

instance ToText QualificationStatus where
  toText (QualificationStatus' ci) = original ci

instance Hashable QualificationStatus

instance NFData QualificationStatus

instance ToByteString QualificationStatus

instance ToQuery QualificationStatus

instance ToHeader QualificationStatus

instance ToJSON QualificationStatus where
  toJSON = toJSONText

instance FromJSON QualificationStatus where
  parseJSON = parseJSONText "QualificationStatus"
