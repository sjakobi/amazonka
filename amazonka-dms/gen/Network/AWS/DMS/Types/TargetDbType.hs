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
-- Module      : Network.AWS.DMS.Types.TargetDbType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.TargetDbType
  ( TargetDbType
      ( ..,
        TargetDbTypeMultipleDatabases,
        TargetDbTypeSpecificDatabase
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetDbType = TargetDbType'
  { fromTargetDbType ::
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

pattern TargetDbTypeMultipleDatabases :: TargetDbType
pattern TargetDbTypeMultipleDatabases = TargetDbType' "multiple-databases"

pattern TargetDbTypeSpecificDatabase :: TargetDbType
pattern TargetDbTypeSpecificDatabase = TargetDbType' "specific-database"

{-# COMPLETE
  TargetDbTypeMultipleDatabases,
  TargetDbTypeSpecificDatabase,
  TargetDbType'
  #-}

instance Prelude.FromText TargetDbType where
  parser = TargetDbType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetDbType where
  toText (TargetDbType' x) = x

instance Prelude.Hashable TargetDbType

instance Prelude.NFData TargetDbType

instance Prelude.ToByteString TargetDbType

instance Prelude.ToQuery TargetDbType

instance Prelude.ToHeader TargetDbType

instance Prelude.ToJSON TargetDbType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TargetDbType where
  parseJSON = Prelude.parseJSONText "TargetDbType"
