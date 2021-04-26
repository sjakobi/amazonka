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
-- Module      : Network.AWS.AlexaBusiness.Types.EnablementTypeFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.EnablementTypeFilter
  ( EnablementTypeFilter
      ( ..,
        EnablementTypeFilterENABLED,
        EnablementTypeFilterPENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnablementTypeFilter = EnablementTypeFilter'
  { fromEnablementTypeFilter ::
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

pattern EnablementTypeFilterENABLED :: EnablementTypeFilter
pattern EnablementTypeFilterENABLED = EnablementTypeFilter' "ENABLED"

pattern EnablementTypeFilterPENDING :: EnablementTypeFilter
pattern EnablementTypeFilterPENDING = EnablementTypeFilter' "PENDING"

{-# COMPLETE
  EnablementTypeFilterENABLED,
  EnablementTypeFilterPENDING,
  EnablementTypeFilter'
  #-}

instance Prelude.FromText EnablementTypeFilter where
  parser = EnablementTypeFilter' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnablementTypeFilter where
  toText (EnablementTypeFilter' x) = x

instance Prelude.Hashable EnablementTypeFilter

instance Prelude.NFData EnablementTypeFilter

instance Prelude.ToByteString EnablementTypeFilter

instance Prelude.ToQuery EnablementTypeFilter

instance Prelude.ToHeader EnablementTypeFilter

instance Prelude.ToJSON EnablementTypeFilter where
  toJSON = Prelude.toJSONText
