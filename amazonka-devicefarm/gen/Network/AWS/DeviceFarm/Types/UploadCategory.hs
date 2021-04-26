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
-- Module      : Network.AWS.DeviceFarm.Types.UploadCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.UploadCategory
  ( UploadCategory
      ( ..,
        UploadCategoryCURATED,
        UploadCategoryPRIVATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UploadCategory = UploadCategory'
  { fromUploadCategory ::
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

pattern UploadCategoryCURATED :: UploadCategory
pattern UploadCategoryCURATED = UploadCategory' "CURATED"

pattern UploadCategoryPRIVATE :: UploadCategory
pattern UploadCategoryPRIVATE = UploadCategory' "PRIVATE"

{-# COMPLETE
  UploadCategoryCURATED,
  UploadCategoryPRIVATE,
  UploadCategory'
  #-}

instance Prelude.FromText UploadCategory where
  parser = UploadCategory' Prelude.<$> Prelude.takeText

instance Prelude.ToText UploadCategory where
  toText (UploadCategory' x) = x

instance Prelude.Hashable UploadCategory

instance Prelude.NFData UploadCategory

instance Prelude.ToByteString UploadCategory

instance Prelude.ToQuery UploadCategory

instance Prelude.ToHeader UploadCategory

instance Prelude.FromJSON UploadCategory where
  parseJSON = Prelude.parseJSONText "UploadCategory"
