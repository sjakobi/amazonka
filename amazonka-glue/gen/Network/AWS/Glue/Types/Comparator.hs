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
-- Module      : Network.AWS.Glue.Types.Comparator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Comparator
  ( Comparator
      ( ..,
        ComparatorEQUALS,
        ComparatorGREATERTHAN,
        ComparatorGREATERTHANEQUALS,
        ComparatorLESSTHAN,
        ComparatorLESSTHANEQUALS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Comparator = Comparator'
  { fromComparator ::
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

pattern ComparatorEQUALS :: Comparator
pattern ComparatorEQUALS = Comparator' "EQUALS"

pattern ComparatorGREATERTHAN :: Comparator
pattern ComparatorGREATERTHAN = Comparator' "GREATER_THAN"

pattern ComparatorGREATERTHANEQUALS :: Comparator
pattern ComparatorGREATERTHANEQUALS = Comparator' "GREATER_THAN_EQUALS"

pattern ComparatorLESSTHAN :: Comparator
pattern ComparatorLESSTHAN = Comparator' "LESS_THAN"

pattern ComparatorLESSTHANEQUALS :: Comparator
pattern ComparatorLESSTHANEQUALS = Comparator' "LESS_THAN_EQUALS"

{-# COMPLETE
  ComparatorEQUALS,
  ComparatorGREATERTHAN,
  ComparatorGREATERTHANEQUALS,
  ComparatorLESSTHAN,
  ComparatorLESSTHANEQUALS,
  Comparator'
  #-}

instance Prelude.FromText Comparator where
  parser = Comparator' Prelude.<$> Prelude.takeText

instance Prelude.ToText Comparator where
  toText (Comparator' x) = x

instance Prelude.Hashable Comparator

instance Prelude.NFData Comparator

instance Prelude.ToByteString Comparator

instance Prelude.ToQuery Comparator

instance Prelude.ToHeader Comparator

instance Prelude.ToJSON Comparator where
  toJSON = Prelude.toJSONText
