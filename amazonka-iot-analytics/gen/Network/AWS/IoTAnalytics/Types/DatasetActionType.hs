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
-- Module      : Network.AWS.IoTAnalytics.Types.DatasetActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatasetActionType
  ( DatasetActionType
      ( ..,
        DatasetActionTypeCONTAINER,
        DatasetActionTypeQUERY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DatasetActionType = DatasetActionType'
  { fromDatasetActionType ::
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

pattern DatasetActionTypeCONTAINER :: DatasetActionType
pattern DatasetActionTypeCONTAINER = DatasetActionType' "CONTAINER"

pattern DatasetActionTypeQUERY :: DatasetActionType
pattern DatasetActionTypeQUERY = DatasetActionType' "QUERY"

{-# COMPLETE
  DatasetActionTypeCONTAINER,
  DatasetActionTypeQUERY,
  DatasetActionType'
  #-}

instance Prelude.FromText DatasetActionType where
  parser = DatasetActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DatasetActionType where
  toText (DatasetActionType' x) = x

instance Prelude.Hashable DatasetActionType

instance Prelude.NFData DatasetActionType

instance Prelude.ToByteString DatasetActionType

instance Prelude.ToQuery DatasetActionType

instance Prelude.ToHeader DatasetActionType

instance Prelude.FromJSON DatasetActionType where
  parseJSON = Prelude.parseJSONText "DatasetActionType"
