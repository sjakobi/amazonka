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
-- Module      : Network.AWS.KinesisVideo.Types.UpdateDataRetentionOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.UpdateDataRetentionOperation
  ( UpdateDataRetentionOperation
      ( ..,
        UpdateDataRetentionOperationDECREASEDATARETENTION,
        UpdateDataRetentionOperationINCREASEDATARETENTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UpdateDataRetentionOperation = UpdateDataRetentionOperation'
  { fromUpdateDataRetentionOperation ::
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

pattern UpdateDataRetentionOperationDECREASEDATARETENTION :: UpdateDataRetentionOperation
pattern UpdateDataRetentionOperationDECREASEDATARETENTION = UpdateDataRetentionOperation' "DECREASE_DATA_RETENTION"

pattern UpdateDataRetentionOperationINCREASEDATARETENTION :: UpdateDataRetentionOperation
pattern UpdateDataRetentionOperationINCREASEDATARETENTION = UpdateDataRetentionOperation' "INCREASE_DATA_RETENTION"

{-# COMPLETE
  UpdateDataRetentionOperationDECREASEDATARETENTION,
  UpdateDataRetentionOperationINCREASEDATARETENTION,
  UpdateDataRetentionOperation'
  #-}

instance Prelude.FromText UpdateDataRetentionOperation where
  parser = UpdateDataRetentionOperation' Prelude.<$> Prelude.takeText

instance Prelude.ToText UpdateDataRetentionOperation where
  toText (UpdateDataRetentionOperation' x) = x

instance Prelude.Hashable UpdateDataRetentionOperation

instance Prelude.NFData UpdateDataRetentionOperation

instance Prelude.ToByteString UpdateDataRetentionOperation

instance Prelude.ToQuery UpdateDataRetentionOperation

instance Prelude.ToHeader UpdateDataRetentionOperation

instance Prelude.ToJSON UpdateDataRetentionOperation where
  toJSON = Prelude.toJSONText
