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
-- Module      : Network.AWS.XRay.Types.InsightCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.InsightCategory
  ( InsightCategory
      ( ..,
        InsightCategoryFAULT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InsightCategory = InsightCategory'
  { fromInsightCategory ::
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

pattern InsightCategoryFAULT :: InsightCategory
pattern InsightCategoryFAULT = InsightCategory' "FAULT"

{-# COMPLETE
  InsightCategoryFAULT,
  InsightCategory'
  #-}

instance Prelude.FromText InsightCategory where
  parser = InsightCategory' Prelude.<$> Prelude.takeText

instance Prelude.ToText InsightCategory where
  toText (InsightCategory' x) = x

instance Prelude.Hashable InsightCategory

instance Prelude.NFData InsightCategory

instance Prelude.ToByteString InsightCategory

instance Prelude.ToQuery InsightCategory

instance Prelude.ToHeader InsightCategory

instance Prelude.FromJSON InsightCategory where
  parseJSON = Prelude.parseJSONText "InsightCategory"
