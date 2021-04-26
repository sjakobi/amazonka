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
-- Module      : Network.AWS.Glue.Types.EnableHybridValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.EnableHybridValues
  ( EnableHybridValues
      ( ..,
        EnableHybridValuesFALSE,
        EnableHybridValuesTRUE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnableHybridValues = EnableHybridValues'
  { fromEnableHybridValues ::
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

pattern EnableHybridValuesFALSE :: EnableHybridValues
pattern EnableHybridValuesFALSE = EnableHybridValues' "FALSE"

pattern EnableHybridValuesTRUE :: EnableHybridValues
pattern EnableHybridValuesTRUE = EnableHybridValues' "TRUE"

{-# COMPLETE
  EnableHybridValuesFALSE,
  EnableHybridValuesTRUE,
  EnableHybridValues'
  #-}

instance Prelude.FromText EnableHybridValues where
  parser = EnableHybridValues' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnableHybridValues where
  toText (EnableHybridValues' x) = x

instance Prelude.Hashable EnableHybridValues

instance Prelude.NFData EnableHybridValues

instance Prelude.ToByteString EnableHybridValues

instance Prelude.ToQuery EnableHybridValues

instance Prelude.ToHeader EnableHybridValues

instance Prelude.ToJSON EnableHybridValues where
  toJSON = Prelude.toJSONText
