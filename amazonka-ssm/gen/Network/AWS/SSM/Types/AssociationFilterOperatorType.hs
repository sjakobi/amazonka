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
-- Module      : Network.AWS.SSM.Types.AssociationFilterOperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationFilterOperatorType
  ( AssociationFilterOperatorType
      ( ..,
        AssociationFilterOperatorTypeEQUAL,
        AssociationFilterOperatorTypeGREATERTHAN,
        AssociationFilterOperatorTypeLESSTHAN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssociationFilterOperatorType = AssociationFilterOperatorType'
  { fromAssociationFilterOperatorType ::
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

pattern AssociationFilterOperatorTypeEQUAL :: AssociationFilterOperatorType
pattern AssociationFilterOperatorTypeEQUAL = AssociationFilterOperatorType' "EQUAL"

pattern AssociationFilterOperatorTypeGREATERTHAN :: AssociationFilterOperatorType
pattern AssociationFilterOperatorTypeGREATERTHAN = AssociationFilterOperatorType' "GREATER_THAN"

pattern AssociationFilterOperatorTypeLESSTHAN :: AssociationFilterOperatorType
pattern AssociationFilterOperatorTypeLESSTHAN = AssociationFilterOperatorType' "LESS_THAN"

{-# COMPLETE
  AssociationFilterOperatorTypeEQUAL,
  AssociationFilterOperatorTypeGREATERTHAN,
  AssociationFilterOperatorTypeLESSTHAN,
  AssociationFilterOperatorType'
  #-}

instance Prelude.FromText AssociationFilterOperatorType where
  parser = AssociationFilterOperatorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssociationFilterOperatorType where
  toText (AssociationFilterOperatorType' x) = x

instance Prelude.Hashable AssociationFilterOperatorType

instance Prelude.NFData AssociationFilterOperatorType

instance Prelude.ToByteString AssociationFilterOperatorType

instance Prelude.ToQuery AssociationFilterOperatorType

instance Prelude.ToHeader AssociationFilterOperatorType

instance Prelude.ToJSON AssociationFilterOperatorType where
  toJSON = Prelude.toJSONText
