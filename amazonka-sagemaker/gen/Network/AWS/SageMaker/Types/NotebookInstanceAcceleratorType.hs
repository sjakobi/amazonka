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
-- Module      : Network.AWS.SageMaker.Types.NotebookInstanceAcceleratorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NotebookInstanceAcceleratorType
  ( NotebookInstanceAcceleratorType
      ( ..,
        NotebookInstanceAcceleratorTypeMl_EIA1_Large,
        NotebookInstanceAcceleratorTypeMl_EIA1_Medium,
        NotebookInstanceAcceleratorTypeMl_EIA1_Xlarge,
        NotebookInstanceAcceleratorTypeMl_EIA2_Large,
        NotebookInstanceAcceleratorTypeMl_EIA2_Medium,
        NotebookInstanceAcceleratorTypeMl_EIA2_Xlarge
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotebookInstanceAcceleratorType = NotebookInstanceAcceleratorType'
  { fromNotebookInstanceAcceleratorType ::
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

pattern NotebookInstanceAcceleratorTypeMl_EIA1_Large :: NotebookInstanceAcceleratorType
pattern NotebookInstanceAcceleratorTypeMl_EIA1_Large = NotebookInstanceAcceleratorType' "ml.eia1.large"

pattern NotebookInstanceAcceleratorTypeMl_EIA1_Medium :: NotebookInstanceAcceleratorType
pattern NotebookInstanceAcceleratorTypeMl_EIA1_Medium = NotebookInstanceAcceleratorType' "ml.eia1.medium"

pattern NotebookInstanceAcceleratorTypeMl_EIA1_Xlarge :: NotebookInstanceAcceleratorType
pattern NotebookInstanceAcceleratorTypeMl_EIA1_Xlarge = NotebookInstanceAcceleratorType' "ml.eia1.xlarge"

pattern NotebookInstanceAcceleratorTypeMl_EIA2_Large :: NotebookInstanceAcceleratorType
pattern NotebookInstanceAcceleratorTypeMl_EIA2_Large = NotebookInstanceAcceleratorType' "ml.eia2.large"

pattern NotebookInstanceAcceleratorTypeMl_EIA2_Medium :: NotebookInstanceAcceleratorType
pattern NotebookInstanceAcceleratorTypeMl_EIA2_Medium = NotebookInstanceAcceleratorType' "ml.eia2.medium"

pattern NotebookInstanceAcceleratorTypeMl_EIA2_Xlarge :: NotebookInstanceAcceleratorType
pattern NotebookInstanceAcceleratorTypeMl_EIA2_Xlarge = NotebookInstanceAcceleratorType' "ml.eia2.xlarge"

{-# COMPLETE
  NotebookInstanceAcceleratorTypeMl_EIA1_Large,
  NotebookInstanceAcceleratorTypeMl_EIA1_Medium,
  NotebookInstanceAcceleratorTypeMl_EIA1_Xlarge,
  NotebookInstanceAcceleratorTypeMl_EIA2_Large,
  NotebookInstanceAcceleratorTypeMl_EIA2_Medium,
  NotebookInstanceAcceleratorTypeMl_EIA2_Xlarge,
  NotebookInstanceAcceleratorType'
  #-}

instance Prelude.FromText NotebookInstanceAcceleratorType where
  parser = NotebookInstanceAcceleratorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotebookInstanceAcceleratorType where
  toText (NotebookInstanceAcceleratorType' x) = x

instance Prelude.Hashable NotebookInstanceAcceleratorType

instance Prelude.NFData NotebookInstanceAcceleratorType

instance Prelude.ToByteString NotebookInstanceAcceleratorType

instance Prelude.ToQuery NotebookInstanceAcceleratorType

instance Prelude.ToHeader NotebookInstanceAcceleratorType

instance Prelude.ToJSON NotebookInstanceAcceleratorType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NotebookInstanceAcceleratorType where
  parseJSON = Prelude.parseJSONText "NotebookInstanceAcceleratorType"
