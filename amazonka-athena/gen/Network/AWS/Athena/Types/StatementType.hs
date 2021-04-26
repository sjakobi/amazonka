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
-- Module      : Network.AWS.Athena.Types.StatementType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.StatementType
  ( StatementType
      ( ..,
        StatementTypeDDL,
        StatementTypeDML,
        StatementTypeUTILITY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StatementType = StatementType'
  { fromStatementType ::
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

pattern StatementTypeDDL :: StatementType
pattern StatementTypeDDL = StatementType' "DDL"

pattern StatementTypeDML :: StatementType
pattern StatementTypeDML = StatementType' "DML"

pattern StatementTypeUTILITY :: StatementType
pattern StatementTypeUTILITY = StatementType' "UTILITY"

{-# COMPLETE
  StatementTypeDDL,
  StatementTypeDML,
  StatementTypeUTILITY,
  StatementType'
  #-}

instance Prelude.FromText StatementType where
  parser = StatementType' Prelude.<$> Prelude.takeText

instance Prelude.ToText StatementType where
  toText (StatementType' x) = x

instance Prelude.Hashable StatementType

instance Prelude.NFData StatementType

instance Prelude.ToByteString StatementType

instance Prelude.ToQuery StatementType

instance Prelude.ToHeader StatementType

instance Prelude.FromJSON StatementType where
  parseJSON = Prelude.parseJSONText "StatementType"
