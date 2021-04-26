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
-- Module      : Network.AWS.MechanicalTurk.Types.QualificationTypeStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.QualificationTypeStatus
  ( QualificationTypeStatus
      ( ..,
        QualificationTypeStatusActive,
        QualificationTypeStatusInactive
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QualificationTypeStatus = QualificationTypeStatus'
  { fromQualificationTypeStatus ::
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

pattern QualificationTypeStatusActive :: QualificationTypeStatus
pattern QualificationTypeStatusActive = QualificationTypeStatus' "Active"

pattern QualificationTypeStatusInactive :: QualificationTypeStatus
pattern QualificationTypeStatusInactive = QualificationTypeStatus' "Inactive"

{-# COMPLETE
  QualificationTypeStatusActive,
  QualificationTypeStatusInactive,
  QualificationTypeStatus'
  #-}

instance Prelude.FromText QualificationTypeStatus where
  parser = QualificationTypeStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText QualificationTypeStatus where
  toText (QualificationTypeStatus' x) = x

instance Prelude.Hashable QualificationTypeStatus

instance Prelude.NFData QualificationTypeStatus

instance Prelude.ToByteString QualificationTypeStatus

instance Prelude.ToQuery QualificationTypeStatus

instance Prelude.ToHeader QualificationTypeStatus

instance Prelude.ToJSON QualificationTypeStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON QualificationTypeStatus where
  parseJSON = Prelude.parseJSONText "QualificationTypeStatus"
