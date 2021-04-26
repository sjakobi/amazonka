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
-- Module      : Network.AWS.Glue.Types.SchemaVersionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SchemaVersionStatus
  ( SchemaVersionStatus
      ( ..,
        SchemaVersionStatusAVAILABLE,
        SchemaVersionStatusDELETING,
        SchemaVersionStatusFAILURE,
        SchemaVersionStatusPENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SchemaVersionStatus = SchemaVersionStatus'
  { fromSchemaVersionStatus ::
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

pattern SchemaVersionStatusAVAILABLE :: SchemaVersionStatus
pattern SchemaVersionStatusAVAILABLE = SchemaVersionStatus' "AVAILABLE"

pattern SchemaVersionStatusDELETING :: SchemaVersionStatus
pattern SchemaVersionStatusDELETING = SchemaVersionStatus' "DELETING"

pattern SchemaVersionStatusFAILURE :: SchemaVersionStatus
pattern SchemaVersionStatusFAILURE = SchemaVersionStatus' "FAILURE"

pattern SchemaVersionStatusPENDING :: SchemaVersionStatus
pattern SchemaVersionStatusPENDING = SchemaVersionStatus' "PENDING"

{-# COMPLETE
  SchemaVersionStatusAVAILABLE,
  SchemaVersionStatusDELETING,
  SchemaVersionStatusFAILURE,
  SchemaVersionStatusPENDING,
  SchemaVersionStatus'
  #-}

instance Prelude.FromText SchemaVersionStatus where
  parser = SchemaVersionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText SchemaVersionStatus where
  toText (SchemaVersionStatus' x) = x

instance Prelude.Hashable SchemaVersionStatus

instance Prelude.NFData SchemaVersionStatus

instance Prelude.ToByteString SchemaVersionStatus

instance Prelude.ToQuery SchemaVersionStatus

instance Prelude.ToHeader SchemaVersionStatus

instance Prelude.FromJSON SchemaVersionStatus where
  parseJSON = Prelude.parseJSONText "SchemaVersionStatus"
