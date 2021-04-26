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
-- Module      : Network.AWS.IoTAnalytics.Types.ComputeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.ComputeType
  ( ComputeType
      ( ..,
        ComputeTypeACU1,
        ComputeTypeACU2
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ComputeType = ComputeType'
  { fromComputeType ::
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

pattern ComputeTypeACU1 :: ComputeType
pattern ComputeTypeACU1 = ComputeType' "ACU_1"

pattern ComputeTypeACU2 :: ComputeType
pattern ComputeTypeACU2 = ComputeType' "ACU_2"

{-# COMPLETE
  ComputeTypeACU1,
  ComputeTypeACU2,
  ComputeType'
  #-}

instance Prelude.FromText ComputeType where
  parser = ComputeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ComputeType where
  toText (ComputeType' x) = x

instance Prelude.Hashable ComputeType

instance Prelude.NFData ComputeType

instance Prelude.ToByteString ComputeType

instance Prelude.ToQuery ComputeType

instance Prelude.ToHeader ComputeType

instance Prelude.ToJSON ComputeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ComputeType where
  parseJSON = Prelude.parseJSONText "ComputeType"
