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
-- Module      : Network.AWS.DynamoDB.Types.ScalarAttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ScalarAttributeType
  ( ScalarAttributeType
      ( ..,
        ScalarAttributeTypeB,
        ScalarAttributeTypeN,
        ScalarAttributeTypeS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScalarAttributeType = ScalarAttributeType'
  { fromScalarAttributeType ::
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

pattern ScalarAttributeTypeB :: ScalarAttributeType
pattern ScalarAttributeTypeB = ScalarAttributeType' "B"

pattern ScalarAttributeTypeN :: ScalarAttributeType
pattern ScalarAttributeTypeN = ScalarAttributeType' "N"

pattern ScalarAttributeTypeS :: ScalarAttributeType
pattern ScalarAttributeTypeS = ScalarAttributeType' "S"

{-# COMPLETE
  ScalarAttributeTypeB,
  ScalarAttributeTypeN,
  ScalarAttributeTypeS,
  ScalarAttributeType'
  #-}

instance Prelude.FromText ScalarAttributeType where
  parser = ScalarAttributeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScalarAttributeType where
  toText (ScalarAttributeType' x) = x

instance Prelude.Hashable ScalarAttributeType

instance Prelude.NFData ScalarAttributeType

instance Prelude.ToByteString ScalarAttributeType

instance Prelude.ToQuery ScalarAttributeType

instance Prelude.ToHeader ScalarAttributeType

instance Prelude.ToJSON ScalarAttributeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ScalarAttributeType where
  parseJSON = Prelude.parseJSONText "ScalarAttributeType"
