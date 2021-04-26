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
-- Module      : Network.AWS.SageMaker.Types.TransformInstanceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TransformInstanceType
  ( TransformInstanceType
      ( ..,
        TransformInstanceTypeMl_C4_2xlarge,
        TransformInstanceTypeMl_C4_4xlarge,
        TransformInstanceTypeMl_C4_8xlarge,
        TransformInstanceTypeMl_C4_Xlarge,
        TransformInstanceTypeMl_C5_18xlarge,
        TransformInstanceTypeMl_C5_2xlarge,
        TransformInstanceTypeMl_C5_4xlarge,
        TransformInstanceTypeMl_C5_9xlarge,
        TransformInstanceTypeMl_C5_Xlarge,
        TransformInstanceTypeMl_M4_10xlarge,
        TransformInstanceTypeMl_M4_16xlarge,
        TransformInstanceTypeMl_M4_2xlarge,
        TransformInstanceTypeMl_M4_4xlarge,
        TransformInstanceTypeMl_M4_Xlarge,
        TransformInstanceTypeMl_M5_12xlarge,
        TransformInstanceTypeMl_M5_24xlarge,
        TransformInstanceTypeMl_M5_2xlarge,
        TransformInstanceTypeMl_M5_4xlarge,
        TransformInstanceTypeMl_M5_Large,
        TransformInstanceTypeMl_M5_Xlarge,
        TransformInstanceTypeMl_P2_16xlarge,
        TransformInstanceTypeMl_P2_8xlarge,
        TransformInstanceTypeMl_P2_Xlarge,
        TransformInstanceTypeMl_P3_16xlarge,
        TransformInstanceTypeMl_P3_2xlarge,
        TransformInstanceTypeMl_P3_8xlarge
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TransformInstanceType = TransformInstanceType'
  { fromTransformInstanceType ::
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

pattern TransformInstanceTypeMl_C4_2xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_C4_2xlarge = TransformInstanceType' "ml.c4.2xlarge"

pattern TransformInstanceTypeMl_C4_4xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_C4_4xlarge = TransformInstanceType' "ml.c4.4xlarge"

pattern TransformInstanceTypeMl_C4_8xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_C4_8xlarge = TransformInstanceType' "ml.c4.8xlarge"

pattern TransformInstanceTypeMl_C4_Xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_C4_Xlarge = TransformInstanceType' "ml.c4.xlarge"

pattern TransformInstanceTypeMl_C5_18xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_C5_18xlarge = TransformInstanceType' "ml.c5.18xlarge"

pattern TransformInstanceTypeMl_C5_2xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_C5_2xlarge = TransformInstanceType' "ml.c5.2xlarge"

pattern TransformInstanceTypeMl_C5_4xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_C5_4xlarge = TransformInstanceType' "ml.c5.4xlarge"

pattern TransformInstanceTypeMl_C5_9xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_C5_9xlarge = TransformInstanceType' "ml.c5.9xlarge"

pattern TransformInstanceTypeMl_C5_Xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_C5_Xlarge = TransformInstanceType' "ml.c5.xlarge"

pattern TransformInstanceTypeMl_M4_10xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_M4_10xlarge = TransformInstanceType' "ml.m4.10xlarge"

pattern TransformInstanceTypeMl_M4_16xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_M4_16xlarge = TransformInstanceType' "ml.m4.16xlarge"

pattern TransformInstanceTypeMl_M4_2xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_M4_2xlarge = TransformInstanceType' "ml.m4.2xlarge"

pattern TransformInstanceTypeMl_M4_4xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_M4_4xlarge = TransformInstanceType' "ml.m4.4xlarge"

pattern TransformInstanceTypeMl_M4_Xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_M4_Xlarge = TransformInstanceType' "ml.m4.xlarge"

pattern TransformInstanceTypeMl_M5_12xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_M5_12xlarge = TransformInstanceType' "ml.m5.12xlarge"

pattern TransformInstanceTypeMl_M5_24xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_M5_24xlarge = TransformInstanceType' "ml.m5.24xlarge"

pattern TransformInstanceTypeMl_M5_2xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_M5_2xlarge = TransformInstanceType' "ml.m5.2xlarge"

pattern TransformInstanceTypeMl_M5_4xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_M5_4xlarge = TransformInstanceType' "ml.m5.4xlarge"

pattern TransformInstanceTypeMl_M5_Large :: TransformInstanceType
pattern TransformInstanceTypeMl_M5_Large = TransformInstanceType' "ml.m5.large"

pattern TransformInstanceTypeMl_M5_Xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_M5_Xlarge = TransformInstanceType' "ml.m5.xlarge"

pattern TransformInstanceTypeMl_P2_16xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_P2_16xlarge = TransformInstanceType' "ml.p2.16xlarge"

pattern TransformInstanceTypeMl_P2_8xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_P2_8xlarge = TransformInstanceType' "ml.p2.8xlarge"

pattern TransformInstanceTypeMl_P2_Xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_P2_Xlarge = TransformInstanceType' "ml.p2.xlarge"

pattern TransformInstanceTypeMl_P3_16xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_P3_16xlarge = TransformInstanceType' "ml.p3.16xlarge"

pattern TransformInstanceTypeMl_P3_2xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_P3_2xlarge = TransformInstanceType' "ml.p3.2xlarge"

pattern TransformInstanceTypeMl_P3_8xlarge :: TransformInstanceType
pattern TransformInstanceTypeMl_P3_8xlarge = TransformInstanceType' "ml.p3.8xlarge"

{-# COMPLETE
  TransformInstanceTypeMl_C4_2xlarge,
  TransformInstanceTypeMl_C4_4xlarge,
  TransformInstanceTypeMl_C4_8xlarge,
  TransformInstanceTypeMl_C4_Xlarge,
  TransformInstanceTypeMl_C5_18xlarge,
  TransformInstanceTypeMl_C5_2xlarge,
  TransformInstanceTypeMl_C5_4xlarge,
  TransformInstanceTypeMl_C5_9xlarge,
  TransformInstanceTypeMl_C5_Xlarge,
  TransformInstanceTypeMl_M4_10xlarge,
  TransformInstanceTypeMl_M4_16xlarge,
  TransformInstanceTypeMl_M4_2xlarge,
  TransformInstanceTypeMl_M4_4xlarge,
  TransformInstanceTypeMl_M4_Xlarge,
  TransformInstanceTypeMl_M5_12xlarge,
  TransformInstanceTypeMl_M5_24xlarge,
  TransformInstanceTypeMl_M5_2xlarge,
  TransformInstanceTypeMl_M5_4xlarge,
  TransformInstanceTypeMl_M5_Large,
  TransformInstanceTypeMl_M5_Xlarge,
  TransformInstanceTypeMl_P2_16xlarge,
  TransformInstanceTypeMl_P2_8xlarge,
  TransformInstanceTypeMl_P2_Xlarge,
  TransformInstanceTypeMl_P3_16xlarge,
  TransformInstanceTypeMl_P3_2xlarge,
  TransformInstanceTypeMl_P3_8xlarge,
  TransformInstanceType'
  #-}

instance Prelude.FromText TransformInstanceType where
  parser = TransformInstanceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransformInstanceType where
  toText (TransformInstanceType' x) = x

instance Prelude.Hashable TransformInstanceType

instance Prelude.NFData TransformInstanceType

instance Prelude.ToByteString TransformInstanceType

instance Prelude.ToQuery TransformInstanceType

instance Prelude.ToHeader TransformInstanceType

instance Prelude.ToJSON TransformInstanceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TransformInstanceType where
  parseJSON = Prelude.parseJSONText "TransformInstanceType"
