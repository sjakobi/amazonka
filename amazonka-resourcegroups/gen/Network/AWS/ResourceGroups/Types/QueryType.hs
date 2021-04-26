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
-- Module      : Network.AWS.ResourceGroups.Types.QueryType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.QueryType
  ( QueryType
      ( ..,
        QueryTypeCLOUDFORMATIONSTACK10,
        QueryTypeTAGFILTERS10
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QueryType = QueryType'
  { fromQueryType ::
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

pattern QueryTypeCLOUDFORMATIONSTACK10 :: QueryType
pattern QueryTypeCLOUDFORMATIONSTACK10 = QueryType' "CLOUDFORMATION_STACK_1_0"

pattern QueryTypeTAGFILTERS10 :: QueryType
pattern QueryTypeTAGFILTERS10 = QueryType' "TAG_FILTERS_1_0"

{-# COMPLETE
  QueryTypeCLOUDFORMATIONSTACK10,
  QueryTypeTAGFILTERS10,
  QueryType'
  #-}

instance Prelude.FromText QueryType where
  parser = QueryType' Prelude.<$> Prelude.takeText

instance Prelude.ToText QueryType where
  toText (QueryType' x) = x

instance Prelude.Hashable QueryType

instance Prelude.NFData QueryType

instance Prelude.ToByteString QueryType

instance Prelude.ToQuery QueryType

instance Prelude.ToHeader QueryType

instance Prelude.ToJSON QueryType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON QueryType where
  parseJSON = Prelude.parseJSONText "QueryType"
