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
-- Module      : Network.AWS.DynamoDB.Types.ProjectionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ProjectionType
  ( ProjectionType
      ( ..,
        ProjectionTypeALL,
        ProjectionTypeINCLUDE,
        ProjectionTypeKEYSONLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProjectionType = ProjectionType'
  { fromProjectionType ::
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

pattern ProjectionTypeALL :: ProjectionType
pattern ProjectionTypeALL = ProjectionType' "ALL"

pattern ProjectionTypeINCLUDE :: ProjectionType
pattern ProjectionTypeINCLUDE = ProjectionType' "INCLUDE"

pattern ProjectionTypeKEYSONLY :: ProjectionType
pattern ProjectionTypeKEYSONLY = ProjectionType' "KEYS_ONLY"

{-# COMPLETE
  ProjectionTypeALL,
  ProjectionTypeINCLUDE,
  ProjectionTypeKEYSONLY,
  ProjectionType'
  #-}

instance Prelude.FromText ProjectionType where
  parser = ProjectionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProjectionType where
  toText (ProjectionType' x) = x

instance Prelude.Hashable ProjectionType

instance Prelude.NFData ProjectionType

instance Prelude.ToByteString ProjectionType

instance Prelude.ToQuery ProjectionType

instance Prelude.ToHeader ProjectionType

instance Prelude.ToJSON ProjectionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProjectionType where
  parseJSON = Prelude.parseJSONText "ProjectionType"
