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
-- Module      : Network.AWS.MechanicalTurk.Types.Comparator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.Comparator
  ( Comparator
      ( ..,
        ComparatorDoesNotExist,
        ComparatorEqualTo,
        ComparatorExists,
        ComparatorGreaterThan,
        ComparatorGreaterThanOrEqualTo,
        ComparatorIN,
        ComparatorLessThan,
        ComparatorLessThanOrEqualTo,
        ComparatorNotEqualTo,
        ComparatorNotIn
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

pattern ComparatorDoesNotExist :: Comparator
pattern ComparatorDoesNotExist = Comparator' "DoesNotExist"

pattern ComparatorEqualTo :: Comparator
pattern ComparatorEqualTo = Comparator' "EqualTo"

pattern ComparatorExists :: Comparator
pattern ComparatorExists = Comparator' "Exists"

pattern ComparatorGreaterThan :: Comparator
pattern ComparatorGreaterThan = Comparator' "GreaterThan"

pattern ComparatorGreaterThanOrEqualTo :: Comparator
pattern ComparatorGreaterThanOrEqualTo = Comparator' "GreaterThanOrEqualTo"

pattern ComparatorIN :: Comparator
pattern ComparatorIN = Comparator' "In"

pattern ComparatorLessThan :: Comparator
pattern ComparatorLessThan = Comparator' "LessThan"

pattern ComparatorLessThanOrEqualTo :: Comparator
pattern ComparatorLessThanOrEqualTo = Comparator' "LessThanOrEqualTo"

pattern ComparatorNotEqualTo :: Comparator
pattern ComparatorNotEqualTo = Comparator' "NotEqualTo"

pattern ComparatorNotIn :: Comparator
pattern ComparatorNotIn = Comparator' "NotIn"

{-# COMPLETE
  ComparatorDoesNotExist,
  ComparatorEqualTo,
  ComparatorExists,
  ComparatorGreaterThan,
  ComparatorGreaterThanOrEqualTo,
  ComparatorIN,
  ComparatorLessThan,
  ComparatorLessThanOrEqualTo,
  ComparatorNotEqualTo,
  ComparatorNotIn,
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

instance Prelude.FromJSON Comparator where
  parseJSON = Prelude.parseJSONText "Comparator"
