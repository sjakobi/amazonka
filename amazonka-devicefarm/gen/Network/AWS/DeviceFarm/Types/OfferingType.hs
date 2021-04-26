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
-- Module      : Network.AWS.DeviceFarm.Types.OfferingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.OfferingType
  ( OfferingType
      ( ..,
        OfferingTypeRECURRING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OfferingType = OfferingType'
  { fromOfferingType ::
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

pattern OfferingTypeRECURRING :: OfferingType
pattern OfferingTypeRECURRING = OfferingType' "RECURRING"

{-# COMPLETE
  OfferingTypeRECURRING,
  OfferingType'
  #-}

instance Prelude.FromText OfferingType where
  parser = OfferingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OfferingType where
  toText (OfferingType' x) = x

instance Prelude.Hashable OfferingType

instance Prelude.NFData OfferingType

instance Prelude.ToByteString OfferingType

instance Prelude.ToQuery OfferingType

instance Prelude.ToHeader OfferingType

instance Prelude.FromJSON OfferingType where
  parseJSON = Prelude.parseJSONText "OfferingType"
