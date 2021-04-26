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
-- Module      : Network.AWS.Discovery.Types.ImportTaskFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.ImportTaskFilterName
  ( ImportTaskFilterName
      ( ..,
        ImportTaskFilterNameIMPORTTASKID,
        ImportTaskFilterNameNAME,
        ImportTaskFilterNameSTATUS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImportTaskFilterName = ImportTaskFilterName'
  { fromImportTaskFilterName ::
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

pattern ImportTaskFilterNameIMPORTTASKID :: ImportTaskFilterName
pattern ImportTaskFilterNameIMPORTTASKID = ImportTaskFilterName' "IMPORT_TASK_ID"

pattern ImportTaskFilterNameNAME :: ImportTaskFilterName
pattern ImportTaskFilterNameNAME = ImportTaskFilterName' "NAME"

pattern ImportTaskFilterNameSTATUS :: ImportTaskFilterName
pattern ImportTaskFilterNameSTATUS = ImportTaskFilterName' "STATUS"

{-# COMPLETE
  ImportTaskFilterNameIMPORTTASKID,
  ImportTaskFilterNameNAME,
  ImportTaskFilterNameSTATUS,
  ImportTaskFilterName'
  #-}

instance Prelude.FromText ImportTaskFilterName where
  parser = ImportTaskFilterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImportTaskFilterName where
  toText (ImportTaskFilterName' x) = x

instance Prelude.Hashable ImportTaskFilterName

instance Prelude.NFData ImportTaskFilterName

instance Prelude.ToByteString ImportTaskFilterName

instance Prelude.ToQuery ImportTaskFilterName

instance Prelude.ToHeader ImportTaskFilterName

instance Prelude.ToJSON ImportTaskFilterName where
  toJSON = Prelude.toJSONText
