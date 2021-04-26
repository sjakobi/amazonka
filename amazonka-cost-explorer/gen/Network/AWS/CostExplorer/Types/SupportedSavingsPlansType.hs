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
-- Module      : Network.AWS.CostExplorer.Types.SupportedSavingsPlansType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.SupportedSavingsPlansType
  ( SupportedSavingsPlansType
      ( ..,
        SupportedSavingsPlansTypeCOMPUTESP,
        SupportedSavingsPlansTypeEC2INSTANCESP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SupportedSavingsPlansType = SupportedSavingsPlansType'
  { fromSupportedSavingsPlansType ::
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

pattern SupportedSavingsPlansTypeCOMPUTESP :: SupportedSavingsPlansType
pattern SupportedSavingsPlansTypeCOMPUTESP = SupportedSavingsPlansType' "COMPUTE_SP"

pattern SupportedSavingsPlansTypeEC2INSTANCESP :: SupportedSavingsPlansType
pattern SupportedSavingsPlansTypeEC2INSTANCESP = SupportedSavingsPlansType' "EC2_INSTANCE_SP"

{-# COMPLETE
  SupportedSavingsPlansTypeCOMPUTESP,
  SupportedSavingsPlansTypeEC2INSTANCESP,
  SupportedSavingsPlansType'
  #-}

instance Prelude.FromText SupportedSavingsPlansType where
  parser = SupportedSavingsPlansType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SupportedSavingsPlansType where
  toText (SupportedSavingsPlansType' x) = x

instance Prelude.Hashable SupportedSavingsPlansType

instance Prelude.NFData SupportedSavingsPlansType

instance Prelude.ToByteString SupportedSavingsPlansType

instance Prelude.ToQuery SupportedSavingsPlansType

instance Prelude.ToHeader SupportedSavingsPlansType

instance Prelude.ToJSON SupportedSavingsPlansType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SupportedSavingsPlansType where
  parseJSON = Prelude.parseJSONText "SupportedSavingsPlansType"
