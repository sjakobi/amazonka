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
-- Module      : Network.AWS.Lightsail.Types.ForwardValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ForwardValues
  ( ForwardValues
      ( ..,
        ForwardValuesAll,
        ForwardValuesAllowList,
        ForwardValuesNone
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ForwardValues = ForwardValues'
  { fromForwardValues ::
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

pattern ForwardValuesAll :: ForwardValues
pattern ForwardValuesAll = ForwardValues' "all"

pattern ForwardValuesAllowList :: ForwardValues
pattern ForwardValuesAllowList = ForwardValues' "allow-list"

pattern ForwardValuesNone :: ForwardValues
pattern ForwardValuesNone = ForwardValues' "none"

{-# COMPLETE
  ForwardValuesAll,
  ForwardValuesAllowList,
  ForwardValuesNone,
  ForwardValues'
  #-}

instance Prelude.FromText ForwardValues where
  parser = ForwardValues' Prelude.<$> Prelude.takeText

instance Prelude.ToText ForwardValues where
  toText (ForwardValues' x) = x

instance Prelude.Hashable ForwardValues

instance Prelude.NFData ForwardValues

instance Prelude.ToByteString ForwardValues

instance Prelude.ToQuery ForwardValues

instance Prelude.ToHeader ForwardValues

instance Prelude.ToJSON ForwardValues where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ForwardValues where
  parseJSON = Prelude.parseJSONText "ForwardValues"
