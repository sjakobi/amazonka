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
-- Module      : Network.AWS.Rekognition.Types.ProtectiveEquipmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ProtectiveEquipmentType
  ( ProtectiveEquipmentType
      ( ..,
        ProtectiveEquipmentTypeFACECOVER,
        ProtectiveEquipmentTypeHANDCOVER,
        ProtectiveEquipmentTypeHEADCOVER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProtectiveEquipmentType = ProtectiveEquipmentType'
  { fromProtectiveEquipmentType ::
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

pattern ProtectiveEquipmentTypeFACECOVER :: ProtectiveEquipmentType
pattern ProtectiveEquipmentTypeFACECOVER = ProtectiveEquipmentType' "FACE_COVER"

pattern ProtectiveEquipmentTypeHANDCOVER :: ProtectiveEquipmentType
pattern ProtectiveEquipmentTypeHANDCOVER = ProtectiveEquipmentType' "HAND_COVER"

pattern ProtectiveEquipmentTypeHEADCOVER :: ProtectiveEquipmentType
pattern ProtectiveEquipmentTypeHEADCOVER = ProtectiveEquipmentType' "HEAD_COVER"

{-# COMPLETE
  ProtectiveEquipmentTypeFACECOVER,
  ProtectiveEquipmentTypeHANDCOVER,
  ProtectiveEquipmentTypeHEADCOVER,
  ProtectiveEquipmentType'
  #-}

instance Prelude.FromText ProtectiveEquipmentType where
  parser = ProtectiveEquipmentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProtectiveEquipmentType where
  toText (ProtectiveEquipmentType' x) = x

instance Prelude.Hashable ProtectiveEquipmentType

instance Prelude.NFData ProtectiveEquipmentType

instance Prelude.ToByteString ProtectiveEquipmentType

instance Prelude.ToQuery ProtectiveEquipmentType

instance Prelude.ToHeader ProtectiveEquipmentType

instance Prelude.ToJSON ProtectiveEquipmentType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProtectiveEquipmentType where
  parseJSON = Prelude.parseJSONText "ProtectiveEquipmentType"
