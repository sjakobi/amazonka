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
-- Module      : Network.AWS.Batch.Types.CEType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.CEType
  ( CEType
      ( ..,
        CETypeMANAGED,
        CETypeUNMANAGED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CEType = CEType' {fromCEType :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern CETypeMANAGED :: CEType
pattern CETypeMANAGED = CEType' "MANAGED"

pattern CETypeUNMANAGED :: CEType
pattern CETypeUNMANAGED = CEType' "UNMANAGED"

{-# COMPLETE
  CETypeMANAGED,
  CETypeUNMANAGED,
  CEType'
  #-}

instance Prelude.FromText CEType where
  parser = CEType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CEType where
  toText (CEType' x) = x

instance Prelude.Hashable CEType

instance Prelude.NFData CEType

instance Prelude.ToByteString CEType

instance Prelude.ToQuery CEType

instance Prelude.ToHeader CEType

instance Prelude.ToJSON CEType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CEType where
  parseJSON = Prelude.parseJSONText "CEType"
