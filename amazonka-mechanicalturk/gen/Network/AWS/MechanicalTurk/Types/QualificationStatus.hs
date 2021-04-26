{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        QualificationStatusGranted,
        QualificationStatusRevoked
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QualificationStatus = QualificationStatus'
  { fromQualificationStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern QualificationStatusGranted :: QualificationStatus
pattern QualificationStatusGranted = QualificationStatus' "Granted"

pattern QualificationStatusRevoked :: QualificationStatus
pattern QualificationStatusRevoked = QualificationStatus' "Revoked"

{-# COMPLETE
  QualificationStatusGranted,
  QualificationStatusRevoked,
  QualificationStatus'
  #-}

instance Prelude.FromText QualificationStatus where
  parser = QualificationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText QualificationStatus where
  toText (QualificationStatus' x) = x

instance Prelude.Hashable QualificationStatus

instance Prelude.NFData QualificationStatus

instance Prelude.ToByteString QualificationStatus

instance Prelude.ToQuery QualificationStatus

instance Prelude.ToHeader QualificationStatus

instance Prelude.ToJSON QualificationStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON QualificationStatus where
  parseJSON = Prelude.parseJSONText "QualificationStatus"
